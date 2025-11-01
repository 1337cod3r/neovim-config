vim.opt.clipboard = 'unnamedplus' --when using arch wsl make sure to have win32yank for more info check -> README.md
vim.opt.completeopt = {'menu', 'menuone', 'noselect'} --completion suggestions pop up without having to do <C-n>
vim.opt.mouse = 'a' --allows the use of the mouse in nvim

--set tabs
vim.opt.expandtab = false --use tabs not space on tab character
vim.opt.tabstop = 4 --display width of a tab character
vim.opt.softtabstop = 4 --how many spaces a tab counts for while editing
vim.opt.shiftwidth = 4 --insert 4 spaces on a tab

--UI config
vim.opt.number = true --show absolute line number
vim.opt.relativenumber = true --show relative line number on other lines
vim.opt.cursorline = true --draw a line under the line that you are currently on to highlight
vim.opt.splitbelow = true --new vertical split goes below
vim.opt.splitright = false --new horizontal split goes to the right
vim.opt.termguicolors = true --enable 24-bit rgb color in the TUI

--searching
vim.opt.incsearch = true --as you type in the search vim starts seaching automatically for the letters
vim.opt.hlsearch = true --highlight all matches
vim.opt.ignorecase = true --searching is not case-sensitive
vim.opt.smartcase = true --if search includes upper case letters the search becomes case sensitive



