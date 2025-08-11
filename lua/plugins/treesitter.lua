--- https://github.com/MarioCarrion/videos/blob/e5ab66c3f75ea31373567892defc84be1f730546/2024/nvim-configuration/lua/mario/plugins/nvim-treesitter.lua
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {
    { "nvim-treesitter/nvim-treesitter-textobjects" }, -- Syntax aware text-objects
    {
      "nvim-treesitter/nvim-treesitter-context",       -- Show code context
      opts = { enable = true, mode = "topline", line_numbers = true }
    }
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      ensure_installed = {
        "csv", "dockerfile", "gitignore", "go", "gomod", "gosum",
        "gowork", "javascript", "json", "lua", "markdown", "proto",
        "python", "rego", "sql", "yaml", "php", "java"
      },
      indent = { enable = true },
      auto_install = true,
      sync_install = false,
      highlight = {
        enable = true,
      },
      textobjects = { select = { enable = true, lookahead = true } }
    })
  end
}
