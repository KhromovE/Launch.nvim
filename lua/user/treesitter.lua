local M = {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
}

function M.config()
  require("nvim-treesitter.configs").setup {
    ensure_installed = {
      "lua",
      "markdown",
      "markdown_inline",
      "bash",
      "python",
      "gdscript",
      "godot_resource",
      "gdshader",
      "typescript",
      "rust",
    },
    highlight = { enable = true },
    indent = { enable = true },
    auto_install = true,
  }
end

return M
