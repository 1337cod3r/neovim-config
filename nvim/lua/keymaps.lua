--common options for all these keymaps
local opts = {
	noremap = true, --non-recursive
	silent = true, --dont show message
}

---------------
--Normal mode--
---------------

--undotree
vim.keymap.set('n', '<space>u', vim.cmd.UndotreeToggle, opts)

--explorer
vim.keymap.set('n', '<space>e', ':Ex<CR>', opts)

--searching
vim.keymap.set('n', '<Esc>', ':nohlsearch<CR>', opts) --clear search highlights when pressing esc
vim.keymap.set('v', '<Esc>', ':nohlsearch<CR>', opts) --clear search highlights when pressing esc

--remapped vim motions
vim.keymap.set('n', '(', '<S-h>', opts) --move to top of screen with (
vim.keymap.set('n', ')', '<S-l>', opts) --move to bottom  of screen with )
vim.keymap.set('n', '<S-j>', '}', opts) --move to bottom of paragraph with <S-j>
vim.keymap.set('n', '<S-k>', '{', opts) --move to top of paragraph with <S-k>
vim.keymap.set('n', '<S-h>', '_', opts) --move to first non-space character on line with <S-h>
vim.keymap.set('n', '<S-l>', '$', opts) --move to last character on line with <S-l>

--open/close new horizontal window
vim.keymap.set('n', '<space>n', ':vsplit<CR>', opts)
vim.keymap.set('n', '<space>m', ':wq<CR>', opts)

--better window navigation (can navigate between windows with <C-h/j/k/l>
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

--resize widonws
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

---------------
--Visual mode--
---------------
vim.keymap.set('v', '(', '<S-h>', opts) --move to top of screen with (
vim.keymap.set('v', ')', '<S-l>', opts) --move to bottom  of screen with )
vim.keymap.set('v', '<S-j>', '}', opts) --move to bottom of paragraph with <S-j>
vim.keymap.set('v', '<S-k>', '{', opts) --move to top of paragraph with <S-k>
vim.keymap.set('v', '<S-h>', '_', opts) --move to first non-space character on line with <S-h>
vim.keymap.set('v', '<S-l>', '$', opts) --move to last character on line with <S-l>


