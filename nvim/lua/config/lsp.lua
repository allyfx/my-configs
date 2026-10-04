local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

local cmp = require('cmp')

local select_opts = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
  sources = {
    {name = 'path'},
    {name = 'nvim_lsp'},
    {name = 'buffer'},
  },
  formatting = {
    fields = {'menu', 'abbr', 'kind'}
  },
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = false}),
    ['<Up>'] = cmp.mapping.select_prev_item(select_opts),
    ['<Down>'] = cmp.mapping.select_next_item(select_opts),
    ['<C-e>'] = cmp.mapping.abort(),
  }
})

-- Config TS LSP
vim.lsp.enable('tsserver')
vim.lsp.config('tsserver', {
  cmd = {'typescript-language-server', '--stdio'},
  filetypes = {"javascript", "javascriptreact", "typescript", "typescriptreact"},
  root_dir = vim.fs.root(0, {'package.json', '.git'}),
  capabilities = lsp_capabilities
})