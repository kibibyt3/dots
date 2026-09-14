vim.pack.add({
  'https://github.com/dylanaraps/wal.vim',
  'https://github.com/lervag/vimtex',
})

-- Vimtex configuration
vim.g.vimtex_view_method = 'zathura'

vim.o.relativenumber = true
vim.o.termguicolors = false

vim.o.cc = "80"
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.cmd("colorscheme wal")

-- Unmap space
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
