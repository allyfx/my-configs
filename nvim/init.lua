require("config.lazy")

vim.g.mapleader = " "

-- Keymaps
vim.keymap.set('n', '<leader>e', ':Explore<cr>', { desc = 'Opens explorer' })
vim.keymap.set('n', '<leader>ff', ':FzfLua files<cr>', { desc = 'Search files' })
