return {
  "cohama/lexima.vim",
  config = function ()
    vim.g.lexima_enable_basic_rules = 1
    vim.g.lexima_enable_newline_rules = 1
    vim.fn['lexima#add_rule'] ({char='<', input_after='>'})
  end
}
