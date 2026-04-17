require 'yamaoki.set'
require 'yamaoki.remap'
require 'yamaoki.lazy_init'
require 'yamaoki.netrw'
require 'yamaoki.choose_theme'

vim.api.nvim_create_autocmd('FileType', {
  pattern = {
    'go',
    'lua',
    'tex',
    'cpp',
    'python',
    'c',
    'typescript',
    'javascript',
    'javascriptreact',
    'typescript',
    'typescriptreact',
    'rust',
    'json',
    'sql',
    'dart',
    'java',
    'ruby',
  },
  callback = function()
    vim.treesitter.start()
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})
