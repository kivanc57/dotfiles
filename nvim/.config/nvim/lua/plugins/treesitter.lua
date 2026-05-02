return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        auto_install = false,
        ensure_installed = {
          "bash",
          "tmux",
          "lua",
          "dockerfile",
          "go",
          "gomod",
          "gosum",
          "gotmpl",
          "gowork",
          "markdown",
          "markdown_inline",
          "python",
          "json",
          "yaml",
          "toml",
          "xml",
          "cpp",
          "c",
        },
        highlight = { enable = true },
        indent = { enable = false },
      })
    end,
  },
}

