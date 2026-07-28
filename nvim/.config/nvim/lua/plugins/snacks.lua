return {
  "folke/snacks.nvim",
  dependencies = {
    "echasnovski/mini.icons",
  },
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = true },
    dashboard = {
      enabled = true,
      preset = {
        header = [[
                                                                     
       ████ ██████           █████      ██                     
      ███████████             █████                             
      █████████ ███████████████████ ███   ███████████   
     █████████  ███    █████████████ █████ ██████████████   
    █████████ ██████████ █████████ █████ █████ ████ █████   
  ███████████ ███    ███ █████████ █████ █████ ████ █████  
 ██████  █████████████████████ ████ █████ █████ ████ ██████ 
        ]],
      },
    },
    indent = { enabled = true },
    input = { enabled = true },
    git = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scroll = { enabled = false },
    statuscolumn = { enabled = true },
    words = { enabled = true },
  },
    keys = {
      { "<leader>sf", function() Snacks.scratch() end, desc = "Scratch Buffer" },
      { "<leader>S", function() Snacks.scratch.select() end, desc = "Scratch Buffers" },

      { "<leader>lg", function() Snacks.lazygit() end, desc = "Lazygit" },
      { "<leader>gl", function() Snacks.lazygit.log_file() end, desc = "Git File History" },

      { "<C-p>", function() Snacks.picker.files() end, desc = "Find Files" },
      { "<leader><leader>", function() Snacks.picker.recent() end, desc = "Recent Files" },
      { "<leader>fb", function() Snacks.picker.buffers() end, desc = "Buffers" },
      { "<leader>fg", function() Snacks.picker.grep() end, desc = "Grep Files" },

      { "<C-n>", function() Snacks.explorer() end, desc = "Explorer" },
    }
}
