require 'yamaoki.set'
require 'yamaoki.remap'
require 'yamaoki.lazy_init'
require 'yamaoki.netrw'
require 'yamaoki.choose_theme'

vim.api.nvim_create_autocmd('FileType', {
  pattern = { '<filetype>' },
  callback = function()
    vim.treesitter.start()
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})
