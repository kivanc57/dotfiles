return {
  {
    "nvim-java/nvim-java",
    dependencies = {
      "neovim/nvim-lspconfig",
      "mfussenegger/nvim-dap",
    },
    config = function()
      require("java").setup()

      local lspconfig = require("lspconfig")
      lspconfig.jdtls.setup({
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
      })
    end,
  },
}

