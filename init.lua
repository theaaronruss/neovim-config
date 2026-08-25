vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = '80'
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

vim.g.leader = ' '

vim.cmd.colorscheme('catppuccin')

-- Format Go files on write
vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = '*.go',
    callback = function()
        vim.lsp.buf.format({ async = false })
    end,
})

vim.pack.add({
    'https://github.com/neovim/nvim-lspconfig',
})
vim.lsp.enable('gopls')

