local M = {
  "karb94/neoscroll.nvim",
}

function M.config()
  local neoscroll = require "neoscroll"

  neoscroll.setup {
    -- All these keys will be mapped to their corresponding default scrolling animation
    mappings = { "<C-u>", "<C-d>", "<C-y>", "<C-e>", "zt", "zz", "zb" },
    hide_cursor = true, -- Hide cursor while scrolling
    stop_eof = true, -- Stop at <EOF> when scrolling downwards
    respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
    cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
    easing_function = nil, -- Default easing function
    pre_hook = nil, -- Function to run before the scrolling animation starts
    post_hook = nil, -- Function to run after the scrolling animation ends
    performance_mode = false, -- Disable "Performance Mode" on all buffers.
    easing = "quadratic",
  }

  local keymap = {
    -- Use the "sine" easing function
    ["<C-u>"] = function()
      neoscroll.ctrl_u { duration = 250, easing = "sine" }
    end,
    ["<C-d>"] = function()
      neoscroll.ctrl_d { duration = 250, easing = "sine" }
    end,
    -- When no value is passed the `easing` option supplied in `setup()` is used
    ["<C-y>"] = function()
      neoscroll.scroll(-0.1, { move_cursor = false, duration = 100 })
    end,
    ["<C-e>"] = function()
      neoscroll.scroll(0.1, { move_cursor = false, duration = 100 })
    end,
    ["zt"] = function()
      neoscroll.zt { half_win_duration = 250 }
    end,
    ["zz"] = function()
      neoscroll.zz { half_win_duration = 250 }
    end,
    ["zb"] = function()
      neoscroll.zb { half_win_duration = 250 }
    end,
  }
  local modes = { "n", "v", "x" }
  for key, func in pairs(keymap) do
    vim.keymap.set(modes, key, func)
  end
end

return M
