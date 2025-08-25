return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        auto_install = false,
        ensure_installed = {
          "bash",
          "tmux",
          "lua",
          "dockerfile",
          "go",
          "goctl",
          "gomod",
          "gosum",
          "gotmpl",
          "gowork",
          "markdown",
          "markdown_inline",
          "python",
          "java",
          "json",
          "yaml",
          "toml",
          "xml",
        },
        highlight = { enable = true },
        indent = { enable = false },
      })
    end
  }
}
