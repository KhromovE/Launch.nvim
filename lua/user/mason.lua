local M = {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "nvim-lua/plenary.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
}

M.execs = {
  "lua_ls",
  "cssls",
  "html",
  "ts_ls",
  "astro",
  "pyright",
  "bashls",
  "jsonls",
  "yamlls",
  "marksman",
  "tailwindcss",
  "rust_analyzer",
  "eslint",
  "stylelint_lsp",
  "gopls",
}

function M.config()
  local wk = require "which-key"

  wk.add {
    { "<leader>lI", "<cmd>Mason<cr>", desc = "Mason Info" },
  }

  require("mason").setup {
    ui = {
      border = "rounded",
    },
  }
  require("mason-lspconfig").setup {
    ensure_installed = M.execs,
  }
  require("mason-tool-installer").setup {
    ensure_installed = {
      "prettier",
      "eslint",
      "stylelint_lsp",
      "gopls",
      "delve",
      "gofumpt",
      "goimports",
    },
  }
end

return M
