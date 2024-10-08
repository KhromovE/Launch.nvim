local M = {
  "linrongbin16/gitlinker.nvim",
  dependencies = { { "nvim-lua/plenary.nvim" } },
  event = "VeryLazy",
}

function M.config()
  local wk = require "which-key"

  wk.add {
    {
      "<leader>gy",
      "<cmd>GitLink!<CR>",
      desc = "Git link",
    },
    {
      "<leader>gY",
      "<cmd>GitLink blame<CR>",
      desc = "Git link blame",
    },
    {
      "<leader>gy",
      "<cmd>GitLink!<CR>",
      desc = "Git link",
      mode = "v",
    },
  }

  require("gitlinker").setup {
    message = false,
    console_log = false,
  }
end

return M
