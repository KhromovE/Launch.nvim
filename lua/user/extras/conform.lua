local M = {
  "stevearc/conform.nvim",
  opts = {},
}

function M.config()
  local wk = require "which-key"
  wk.register {
    ["<leader>lF"] = { "<cmd>ToggleFormat<cr>", "Toggle autoformat" },
  }

  require("conform").setup {
    format_on_save = function(bufnr)
      -- Disable with a global or buffer-local variable
      if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
        return
      end
      return { lsp_fallback = true }
    end,
    formatters_by_ft = {
      -- Conform can also run multiple formatters sequentially
      -- python = { "isort", "black" },
      --
      -- You can use a sub-list to tell conform to run *until* a formatter
      -- is found.
      javascript = { { "prettier" } },
      typescript = { { "prettier" } },
      json = { { "prettier" } },
      lua = { { "stylua" } },
    },
  }
end

vim.api.nvim_create_user_command("ToggleFormat", function()
  vim.g.disable_autoformat = not vim.g.disable_autoformat
  vim.b.disable_autoformat = not vim.b.disable_autoformat
end, {
  desc = "Toggle autoformat-on-save",
})

return M
