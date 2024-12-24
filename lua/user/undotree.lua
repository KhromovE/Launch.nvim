local M = {
  "mbbill/undotree",
}

function M.config()
  local wk = require "which-key"

  wk.add {
    {
      "<leader>u",
      "<cmd>UndotreeToggle<CR>",
      desc = "Undotree",
      icon = "",
    },
  }
end

return M
