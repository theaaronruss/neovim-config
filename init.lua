---------------------
-- General Options --
---------------------
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.colorcolumn = '80'

-------------
-- Plugins --
-------------

-- Gruvbox
vim.pack.add({
  'https://github.com/ellisonleao/gruvbox.nvim'
})
require('gruvbox').setup()
vim.cmd.colorscheme('gruvbox')

-- Plenary
vim.pack.add({
    'https://github.com/nvim-lua/plenary.nvim'
})

-- Telescope
vim.pack.add({
    'https://github.com/nvim-telescope/telescope.nvim'
})

------------------
-- Key Mappings --
------------------
vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>e', vim.cmd.Ex, { desc = 'Show file explorer' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Show diagnostic under cursor' })
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Fuzzy find files' })
vim.keymap.set('n', '<leader>fs', builtin.live_grep, { desc = 'Live grep' })
vim.keymap.set('n', '<leader>ls', builtin.lsp_document_symbols, { desc = 'Search document symbols' })
vim.keymap.set('n', '<leader>dl', builtin.diagnostics, { desc = 'Show all diagnostics for file' })

---------
-- LSP --
---------
vim.lsp.config['clangd'] = {
  cmd = { 'clangd' },
  filetypes = { 'c', 'cpp' },
  root_markers = { 'Makefile', '.git' },
}
vim.lsp.enable('clangd')

