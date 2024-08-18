local M = {
  "vim-test/vim-test",
  cmd = { "TestNearest", "TestFile", "TestSuite", "TestLast", "TestVisit" },
  keys = {},
}

function M.config()
  local wk = require "which-key"
  wk.register {
    ["<leader>tf"] = { "<cmd>TestFile<cr>", "Test File" },
    ["<leader>tn"] = { "<cmd>TestNearest<cr>", "Test Nearest" },
    ["<leader>ts"] = { "<cmd>TestSuite<cr>", "Test Suite" },
    ["<leader>tl"] = { "<cmd>TestLast<cr>", "Test Last" },
    ["<leader>tv"] = { "<cmd>TestVisit<cr>", "Test Visit" },
  }

  requre("vim-test").setup {
    config = function()
      vim.cmd [[
            function! ToggleTermStrategy(cmd) abort
              call luaeval("require('toggleterm').exec(_A[1])", [a:cmd])
            endfunction
            let g:test#custom_strategies = {'toggleterm': function('ToggleTermStrategy')}
          ]]
      vim.g["test#strategy"] = "toggleterm"
    end,
  }
end

return M
