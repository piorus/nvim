--- https://lsp-zero.netlify.app/v3.x/tutorial.html
return {
  'VonHeikemen/lsp-zero.nvim',
  dependencies = {
    'folke/tokyonight.nvim',
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/nvim-cmp',
    'L3MON4D3/LuaSnip',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'onsails/lspkind-nvim'
  },
  config = function()
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

    require('lspconfig').intelephense.setup({})

    local luasnip = require("luasnip")
    local types = require("luasnip.util.types")
    luasnip.config.setup({
      ext_opts = {
          [types.choiceNode] = {
              active = {virt_text = {{"⇥", "GruvboxRed"}}}
          },
          [types.insertNode] = {
              active = {virt_text = {{"⇥", "GruvboxBlue"}}}
          }
      }
    })
    local cmp = require("cmp")
    local lspkind = require("lspkind")
    cmp.setup({
        snippet = {
            expand = function(args)
                luasnip.lsp_expand(args.body)
            end
        },
        window = {
            completion = cmp.config.window.bordered(),
            documentation = cmp.config.window.bordered()
        },
        mapping = cmp.mapping.preset.insert({
            ["<C-b>"] = cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
            ["<C-Space>"] = cmp.mapping.complete(),
            ["<C-e>"] = cmp.mapping.abort(),
            ["<CR>"] = cmp.mapping.confirm({select = true}),
            ["<Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_next_item()
                elseif luasnip.locally_jumpable(1) then
                    luasnip.jump(1)
                else
                    fallback()
                end
            end, {"i", "s"})
        }),
        sources = cmp.config.sources({
            {name = "nvim_lsp"}, {name = "luasnip"}, {name = "buffer"}
        }),
        formatting = {
            format = lspkind.cmp_format({
                mode = "symbol_text",
                maxwidth = 70,
                show_labelDetails = true
            })
        },
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        }
      })
  end,
  opts = {},
}
