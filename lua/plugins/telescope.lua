--- https://github.com/nvim-telescope/telescope.nvim
return {
  'nvim-telescope/telescope.nvim', 
  tag = '0.1.8',
  dependencies = { 
    'nvim-lua/plenary.nvim', 
    'nvim-telescope/telescope-file-browser.nvim' 
  },
  config = function()
    local telescope = require("telescope")
    telescope.setup {
      extensions = {
        file_browser = {
          theme = "ivy",
          -- disables netrw and use telescope-file-browser in its place
          hijack_netrw = true,
          mappings = {
            ["i"] = {
              -- your custom insert mode mappings
            },
            ["n"] = {
              -- your custom normal mode mappings
            },
          },
        },
      },
    }
    telescope.load_extension "file_browser"
  end
}
