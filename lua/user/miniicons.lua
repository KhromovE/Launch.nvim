local M = {
  "echasnovski/mini.nvim",
  version = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
}
function M.config()
  require("mini.icons").setup()
  require("nvim-web-devicons").setup { default = true }
  MiniIcons.mock_nvim_web_devicons()
end

return M
