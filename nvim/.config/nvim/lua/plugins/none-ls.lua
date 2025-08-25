return {
   "nvimtools/none-ls.nvim",
   config = function()
     local null_ls = require("null-ls")
     null_ls.setup({
      sources = {
        null_ls.builtins.diagnostics.actionlint,
        null_ls.builtins.diagnostics.golangci_lint,
        null_ls.builtins.diagnostics.hadolint,
        null_ls.builtins.diagnostics.markdownlint,
       },
     })
   end,
}
