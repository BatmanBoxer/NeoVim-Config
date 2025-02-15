vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = "<;>"
vim.g.background = "light"
vim.cmd("set clipboard=unnamed")
vim.cmd("set mouse=a")
vim.cmd("set autoindent")
vim.opt.swapfile = false
vim.opt.relativenumber = true
-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
--vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true

--terminal
vim.keymap.set('t', '<C-w>', "<C-\\><C-n><C-w>h",{silent = true})

