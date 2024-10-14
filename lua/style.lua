local function setup()
  vim.api.nvim_set_hl(0, 'Comment', { fg = '#F01010' })

  vim.api.nvim_set_hl(0, 'WinSeparator', { fg = 'orange' })

  vim.api.nvim_set_hl(0, 'Whitespace', { fg = 'yellow' })

  vim.api.nvim_set_hl(0, 'MatchParen', { bold = true, fg = 'magenta' })

  vim.o.list = true
  vim.o.listchars = 'tab:↣‣,trail:⚬'
  vim.o.colorcolumn = '81'
end

setup()
-- return { setup = setup }
