local M = {
  "linux-cultist/venv-selector.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "nvim-telescope/telescope.nvim",
    "mfussenegger/nvim-dap",
    "mfussenegger/nvim-dap-python",
  },
  opts = {
    -- Your options go here
    -- name = "venv",
    -- auto_refresh = false
    -- stay_on_this_versiopn = true,
  },
  lazy = false,
  branch = "regexp", -- This is the regexp branch, use this for the new version
  config = function()
    require("venv-selector").setup()
  end,
  keys = {
    -- { ",v", "<cmd>VenvSelect<cr>" },
  },
}

return M
