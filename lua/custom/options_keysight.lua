local function setup()
  -- C/C++ indent
  vim.o.cindent = true
  vim.o.cinoptions = 'f0,{1s,N-2s,(0,>2s,n-s,^-s,e-s'

  -- completion mode
  vim.o.wildmode = 'longest,list:lastused,full'
  vim.o.completeopt = 'menuone,preview'

  -- We want swap files, we don't like plugins that crash
  vim.o.swapfile = true

  vim.o.shiftwidth = 2
  vim.o.expandtab = true

  -- Some nitwit sets it to 2, reset it
  vim.o.tabstop = 8

  -- automatic formatting for (c)omments, (t)ext, (r)epeating comment leader on newline,
  -- g(q) key combination, remove comment leader on (j)oining lines, only insert
  -- comment leader if previous comment leader is at start of line (/), when
  -- (l)ine was already long before editing it, don't format it.
  vim.o.formatoptions = 'ctrqj/l'

  -- Don't auto-reload if changed externally
  vim.o.autoread = false

  -- Show status line on each window
  vim.o.laststatus = 2

  local autocmd = vim.api.nvim_create_autocmd
  autocmd({ 'BufRead', 'BufNewFile' }, { pattern = '*.tpp', command = 'set filetype=cpp' })
  -- read nakfiles as ruby for syntax highlighting reasons
  autocmd({ 'BufRead', 'BufNewFile' }, { pattern = { '*.nak', 'nakfile*' }, command = 'set filetype=ruby' })
end

setup()
