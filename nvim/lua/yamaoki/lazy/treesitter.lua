return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  branch = "main",
  config = function()
    require('nvim-treesitter').setup {
      -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
      install_dir = vim.fn.stdpath('data') .. '/site'
    }
    require('nvim-treesitter').install {
      "vimdoc", "javascript", "typescript", "c", "lua", "rust",
      "jsdoc", "bash", "cpp", "latex"
    }

  end
}
