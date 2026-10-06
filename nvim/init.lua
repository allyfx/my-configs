require("config.lazy")
require("config.lsp")
require("config.keymaps")

vim.diagnostic.config({ virtual_text = true })

vim.cmd.colorscheme('nordic')

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
