local M = {
  "b0o/schemastore.nvim",
  lazy = true,
}

function M.config()
  require("lspconfig").jsonls.setup {
    settings = {
      json = {
        schemas = require("schemastore").json.schemas(),
        validate = { enable = true },
      },
    },
  }
end

return M
