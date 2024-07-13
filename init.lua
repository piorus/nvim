require("config.lazy")

local lsp_zero = require('lsp-zero')
lsp_zero.extend_lspconfig()
lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})

local o = vim.o

o.expandtab = true 
o.smartindent = true
o.tabstop = 2 
o.shiftwidth = 2 
