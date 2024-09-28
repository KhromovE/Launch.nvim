local M = {
  "echasnovski/mini.nvim",
  version = false,
  requires = {
    "echasnovski/mini.icons",
  },
}
function M.config()
  require("mini.icons").setup()
  MiniIcons.mock_nvim_web_devicons()
end

return M
