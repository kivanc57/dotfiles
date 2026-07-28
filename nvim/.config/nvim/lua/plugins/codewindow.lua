return {
  "gorbit99/codewindow.nvim",
  config = function()
    local codewindow = require("codewindow")

    codewindow.setup()

    vim.keymap.set("n", "<leader>mt", function()
      codewindow.toggle_minimap()
    end, {
      desc = "Toggle Minimap",
    })

    vim.keymap.set("n", "<leader>mf", function()
      codewindow.toggle_focus()
    end, {
    desc = "Focus Minimap"
    })
  end,
}

