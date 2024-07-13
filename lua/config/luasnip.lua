local luasnip = require("luasnip")
local types = require("luasnip.util.types")

-- Display virtual text to indicate snippet has more nodes
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
