local M = {
  "ojroques/nvim-bufdel",
}

function M.config()
  require("bufdel").setup {
    next = "tabs",
    quit = false,
  }
end

return M
