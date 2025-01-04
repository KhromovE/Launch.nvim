local M = {
  "folke/which-key.nvim",
}

function M.config()
  local wk = require "which-key"
  wk.setup {
    triggers = {
      { "<leader>", mode = { "n", "v" } },
    },
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
      icon = "󰩈",
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
      icon = "󰱝",
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
      "<leader>d",
      group = "Debug",
      icon = "",
    },
    {
      "<leader>f",
      group = "Find",
      icon = "",
    },
    {
      "<leader>g",
      group = "Git",
      icon = "",
    },
    {
      "<leader>g",
      group = "Git",
      mode = "v",
      icon = "",
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
      icon = " ",
    },
    {
      "<leader>T",
      group = "Treesitter",
      icon = "",
    },
    {
      "<leader>t",
      group = "Test",
      icon = "󰙨",
    },
  }
end

return M
