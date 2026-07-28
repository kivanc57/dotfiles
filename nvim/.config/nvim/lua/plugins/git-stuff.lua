return {
  {
    "tpope/vim-fugitive",

    config = function()
        require("gitsigns").setup({
            current_line_blame = true,
        })
    end
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()

      vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", {
        desc = "Preview Hunk",
      })
    end,
  },
}

