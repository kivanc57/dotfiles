return {
 "mfussenegger/nvim-dap",
 dependencies = {
   "rcarriga/nvim-dap-ui",
   "nvim-neotest/nvim-nio",
   "leoluz/nvim-dap-go",
   "mfussenegger/nvim-dap-python",
 },
  config = function ()
    local dap, dapui = require("dap"), require("dapui")
    require("dapui").setup()
    require("dap-go").setup()
    require("dap-python").setup("python3")

  -- dap-ui config
  dap.listeners.before.attach.dapui_config = function()
    dapui.open()
  end
  dap.listeners.before.launch.dapui_config = function()
    dapui.open()
  end
  dap.listeners.before.event_terminated.dapui_config = function()
    dapui.close()
  end
  dap.listeners.before.event_exited.dapui_config = function()
    dapui.close()
  end

  -- dap config
    vim.keymap.set('n', '<leader>ds', function() require('dap').continue() end, { desc = 'DAP: Start/Continue' })

    vim.keymap.set('n', '<leader>do', function() require('dap').step_over() end, { desc = 'DAP: Step Over' })

    vim.keymap.set('n', '<leader>di', function() require('dap').step_into() end, { desc = 'DAP: Step Into' })

    vim.keymap.set('n', '<leader>dii', function() require('dap').step_out() end, { desc = 'DAP: Step Out' })

    vim.keymap.set('n', '<leader>tb', function() require('dap').toggle_breakpoint() end, { desc = 'DAP: Toggle Breakpoint' })

    vim.keymap.set('n', '<leader>rl', function() require('dap').run_last() end, { desc = 'DAP: Run Last' })
  end
}

