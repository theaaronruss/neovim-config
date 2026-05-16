---------------------
-- General Options --
---------------------
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.colorcolumn = "80"

------------------
-- Key Mappings --
------------------
vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float)

---------
-- LSP --
---------
vim.lsp.config['clangd'] = {
  cmd = { 'clangd' },
  filetypes = { 'c', 'cpp' },
  root_markers = { 'Makefile', '.git' },
}
vim.lsp.enable('clangd')

-------------
-- Plugins --
-------------

-- Gruvbox
vim.pack.add({
  "https://github.com/ellisonleao/gruvbox.nvim"
})
require("gruvbox").setup()
vim.cmd.colorscheme("gruvbox")
