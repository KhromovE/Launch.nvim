local M = {
  "folke/which-key.nvim",
}

function M.config()
  local wk = require "which-key"
  wk.setup {
    preset = "classic",
    plugins = {
      marks = true,
      registers = true,
      spelling = {
        enabled = true,
        suggestions = 20,
      },
      presets = {
        operators = false,
        motions = false,
        text_objects = false,
        windows = false,
        nav = false,
        z = false,
        g = false,
      },
    },
    win = {
      border = "rounded",
      no_overlap = false,
      padding = { 1, 2 },
      title = false,
      title_pos = "center",
      zindex = 1000,
    },
    -- ignore_missing = true,
    show_help = false,
    show_keys = false,
    disable = {
      buftypes = {},
      filetypes = { "TelescopePrompt" },
    },
  }

  wk.add {
    {
      "<leader>q",
      "<cmd>confirm q<CR>",
      desc = "Quit",
    },
    {
      "<leader>w",
      "<cmd>w!<CR>",
      desc = "Save",
      icon = " ",
    },
    {
      "<leader>c",
      "<cmd>:lua require('bufdelete').bufdelete(0, false)<CR>",
      desc = "Close Buffer",
    },
    {
      "<leader>h",
      "<cmd>nohlsearch<CR>",
      desc = "NOHL",
      icon = " ",
    },
    {
      "<leader>v",
      "<cmd>vsplit<CR>",
      desc = "Split",
      icon = " ",
    },
    {
      "<leader>b",
      group = "Buffers",
    },
    {
      "<leader>d",
      group = "Debug",
    },
    {
      "<leader>f",
      group = "Find",
    },
    {
      "<leader>g",
      group = "Git",
    },
    {
      "<leader>g",
      group = "Git",
      mode = "v",
    },
    {
      "<leader>l",
      group = "LSP",
      icon = " ",
    },
    {
      "<leader>l",
      group = "LSP",
      mode = "v",
    },

    {
      "<leader>p",
      group = "Plugins",
    },
    {
      "<leader>t",
      group = "Test",
    },
    {
      "<leader>T",
      name = "Treesitter",
    },
  }
end

return M
