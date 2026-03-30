vim.opt.tabstop = 4
vim.opt.softtabstop= -1
vim.opt.shiftwidth = 0
vim.opt.expandtab = true
vim.opt.termguicolors = false

vim.opt.smartindent = true

vim.opt.wrap = false

vim.g.have_nerd_font = true

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.mouse = 'a'

vim.opt.showmode = true

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true
vim.opt.indentexpr = 'nvim_treesitter#indent()'

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default'
vim.opt.signcolumn = 'yes'

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

vim.opt.hlsearch = true
