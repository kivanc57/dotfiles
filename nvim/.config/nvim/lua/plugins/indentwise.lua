  return {
    "folke/which-key.nvim",
    event = "VeryLazy",

    opts = {},

    config = function(_, opts)
      local wk = require("which-key")

      wk.setup(opts)

      wk.add({
        -- Relative indent depth: previous
        {
          "[-",
          desc = "Previous lesser indent",
          mode = "n",
        },
        {
          "[+",
          desc = "Previous greater indent",
          mode = "n",
        },
        {
          "[=",
          desc = "Previous same indent",
          mode = "n",
        },

        -- Relative indent depth: next
        {
          "]-",
          desc = "Next lesser indent",
          mode = "n",
        },
        {
          "]+",
          desc = "Next greater indent",
          mode = "n",
        },
        {
          "]=",
          desc = "Next same indent",
          mode = "n",
        },

        -- Absolute indent level; requires a count, e.g. 2]_
        {
          "[_",
          desc = "Previous at indent level (count)",
          mode = "n",
        },
        {
          "]_",
          desc = "Next at indent level (count)",
          mode = "n",
        },

        -- Indent-block scope
        {
          "[%",
          desc = "Beginning of indent scope",
          mode = "n",
        },
        {
          "]%",
          desc = "End of indent scope",
          mode = "n",
        },
      })
    end,

    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer-local keymaps",
      },
    },
  }

