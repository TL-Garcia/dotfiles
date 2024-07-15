-- ---------------
-- SETTINGS
-- ---------------

-- Line Numbering
vim.opt.nu = true
vim.opt.relativenumber = true

-- Search
vim.opt.smartcase = true
vim.opt.ignorecase = true

-- Tabs
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Page margins
vim.opt.colorcolumn = "81"
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

-- Netrw
vim.g.netrw_winsize=25
vim.g.netrw_banner=0
vim.g.autochdir = true
vim.g.netrw_liststyle=3

-- NERDTree
vim.g.NERDTreeWinSize = 45

-- Misc
vim.g.mapleader = " "
vim.g.updatetime = 50
