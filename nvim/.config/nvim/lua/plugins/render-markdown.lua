return {
  'MeanderingProgrammer/render-markdown.nvim',

  -- Choose one dependency set depending on your setup:
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'echasnovski/mini.nvim',         -- if you use the full mini.nvim suite
    'echasnovski/mini.icons',     -- if you prefer standalone mini plugins
    'nvim-tree/nvim-web-devicons' -- if you prefer nvim-web-devicons for icons
  },

  opts = {},  -- placeholder for user options if needed

  config = function()
    require('render-markdown').setup({
      completions = {
        lsp = { enabled = true },
      },
    })
  end,
  ft = { 'markdown'},
}

