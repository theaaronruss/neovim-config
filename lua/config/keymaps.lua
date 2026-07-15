vim.keymap.set('n', '<leader>e', vim.cmd.Ex, { desc = 'Show file explorer' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Show diagnostic under cursor' })
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Fuzzy find files' })
vim.keymap.set('n', '<leader>fs', builtin.live_grep, { desc = 'Live grep' })
vim.keymap.set('n', '<leader>ls', builtin.lsp_document_symbols, { desc = 'Search document symbols' })
vim.keymap.set('n', '<leader>ws', builtin.lsp_workspace_symbols, { desc = 'Search workspace symbols' })
vim.keymap.set('n', '<leader>dl', builtin.diagnostics, { desc = 'Show all diagnostics for file' })

