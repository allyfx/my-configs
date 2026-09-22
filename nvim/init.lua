require("config.lazy")

vim.g.mapleader = " "

-- Keymaps
vim.keymap.set('n', '<leader>e', ':Explore<cr>', { desc = 'Opens explorer' })
