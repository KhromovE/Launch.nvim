local M = {
  "crnvl96/lazydocker.nvim",
  event = "VeryLazy",
  opts = {},
  dependencies = {
    "akinsho/toggleterm.nvim",
  },
}

function M.config()
  local wk = require "which-key"
  local lazydocker_toggle = function()
    local Terminal = require("toggleterm.terminal").Terminal
    local lazygit = Terminal:new {
      cmd = "LazyDocker",
      hidden = true,
      direction = "float",
      float_opts = {
        border = "none",
        width = 100000,
        height = 100000,
        zindex = 200,
      },
      on_open = function(_)
        vim.cmd "startinsert!"
      end,
      on_close = function(_) end,
      count = 99,
    }
    lazygit:toggle()
  end

  wk.add {
    { "<leader>k", lazydocker_toggle, desc = "LazyDocker" },
  }
end

return M
