require("config.lazy")
require("config.lsp")

vim.diagnostic.config({ virtual_text = true })

vim.g.mapleader = " "

-- Keymaps
vim.keymap.set('n', '<leader>e', ':Explore<cr>', { desc = 'Opens explorer' })
vim.keymap.set('n', '<leader>ff', ':FzfLua files<cr>', { desc = 'Search files' })
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', '<leader>f', function()
  vim.lsp.buf.format { async = true }
end, {})

vim.cmd.colorscheme('nordic')

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.opt.clipboard="unnamed,unnamedplus"
