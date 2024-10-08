-- local bufnr = vim.api.nvim_get_current_buf()
-- -- vim.keymap.set("n", "<leader>a", function()
-- --   vim.cmd.RustLsp "codeAction" -- supports rust-analyzer's grouping
-- --   -- or vim.lsp.buf.codeAction() if you don't want grouping.
-- -- end, { silent = true, buffer = bufnr })
-- local wk = require "which-key"
-- --
-- wk.register {
--   ["<leader>a"] = { '<cmd>vim.cmd.RustLsp "codeAction"<cr>', "Nav" },
-- }
--
-- local function lsp_keymaps(bufnr)
--   local opts = { noremap = true, silent = true }
--   local keymap = vim.api.nvim_buf_set_keymap
--   keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
--   keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
--   keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
--   keymap(bufnr, "n", "gI", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
--   keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
--   keymap(bufnr, "n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
-- end
-- --
-- -- print "I APPLIED SOME SETTINGS!"
-- --
-- lsp_keymaps(bufnr)

vim.opt_local.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
