local M = {
  "christoomey/vim-tmux-navigator",
  event = "VeryLazy",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
  },
}

vim.g.tmux_navigator_no_mappings = 1

local map_options = { silent = true }

vim.keymap.set("n", "<A-h>", "<Cmd>TmuxNavigateLeft<CR>", map_options)
vim.keymap.set("n", "<A-j>", "<Cmd>TmuxNavigateDown<CR>", map_options)
vim.keymap.set("n", "<A-k>", "<Cmd>TmuxNavigateUp<CR>", map_options)
vim.keymap.set("n", "<A-l>", "<Cmd>TmuxNavigateRight<CR>", map_options)
vim.keymap.set("n", "<A-\\>", "<Cmd>TmuxNavigatePrevious<CR>", map_options)

return M
