vim.env.NVIM_LOG_LEVEL = "ERROR"

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.wo.number = true
vim.opt.swapfile = false
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0

vim.keymap.set("n", "<leader>h", "<cmd>nohlsearch<CR>", {
  desc = "Clear Search Highlight",
})

vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv", { silent = true })

vim.filetype.add({
  extension = {
    gotmpl = "gotmpl",
  },
})


