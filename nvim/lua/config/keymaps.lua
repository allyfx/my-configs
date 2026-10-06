vim.g.mapleader = " "

-- Navigation
vim.keymap.set('n', '<leader>e', ':Explore<cr>', { desc = 'Opens explorer' })
vim.keymap.set('n', '<leader>ff', ':FzfLua files<cr>', { desc = 'Search files' })

-- Lsp
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', '<leader>f', function()
  vim.lsp.buf.format { async = true }
end, {})

-- Utils
vim.keymap.set('n', '<D-s>', ':w<cr>', { desc = 'Saves the file' })
vim.keymap.set('n', '<D-se>', ':qw<cr>', { desc = 'Saves the file and exits' })
vim.keymap.set('n', 'q', ':qa!<cr>', { desc = 'Exits' })
vim.keymap.set('v', '<D-c>', ':w !pbcopy<cr><cr>', { desc = 'Copy to clipboard' })