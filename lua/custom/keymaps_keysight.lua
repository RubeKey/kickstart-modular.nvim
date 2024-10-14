-- Additional shared keybinds for keysight-jasper basic setup
-- NOTE: Add your own in keymaps.lua in this folder, not here
local function setup()
  local opts = { noremap = true, silent = true }

  -- undo nvim remapping of Y
  pcall(function()
    vim.keymap.del('n', 'Y')
  end)

  -- typo
  vim.api.nvim_set_keymap('n', ':B', ':b', opts)
  vim.api.nvim_set_keymap('n', ':W', ':w', opts)
  vim.api.nvim_set_keymap('n', ':E', ':e', opts)

  -- cd $(dirname $file)
  vim.api.nvim_set_keymap('n', '<F4>', '<cmd>lcd %:p:h<CR>', opts)

  -- Alternate file
  vim.api.nvim_set_keymap('n', '<F8>', '<cmd>AF<CR>', opts)
  -- vim.cmd 'source ~/.vim/bundle/filenavigation/plugin/a.vim'

  -- Diff both windows
  vim.api.nvim_set_keymap('n', '<Leader>d2', '<cmd>diffthis<CR><C-W><C-W><cmd>diffthis<CR>', opts)

  -- Remove diff
  vim.api.nvim_set_keymap('n', '<Leader>r2', '<cmd>diffoff!<CR>', opts)

  -- terminal escape and navigation
  vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', opts)
  vim.api.nvim_set_keymap('t', '<C-h>', '<C-\\><C-n><C-w>h', opts)
  vim.api.nvim_set_keymap('t', '<C-j>', '<C-\\><C-n><C-w>j', opts)
  vim.api.nvim_set_keymap('t', '<C-k>', '<C-\\><C-n><C-w>k', opts)
  vim.api.nvim_set_keymap('t', '<C-l>', '<C-\\><C-n><C-w>l', opts)

  -- LSP extras
  vim.api.nvim_set_keymap('n', '<Leader>la', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  vim.api.nvim_set_keymap('n', '<Leader>lb', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
  vim.api.nvim_set_keymap('n', '<Leader>lh', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_set_keymap('n', '<Leader>lgD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  vim.api.nvim_set_keymap('n', '<Leader>lgd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_set_keymap('n', '<Leader>lgr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  vim.api.nvim_set_keymap('n', '<Leader>lgs', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  vim.api.nvim_set_keymap('n', '<Leader>lgi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  vim.api.nvim_set_keymap('n', '<Leader>lgt', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  vim.api.nvim_set_keymap('n', '<Leader>lH', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  vim.api.nvim_set_keymap('n', '<Leader>li', '<cmd>lua vim.lsp.buf.incoming_calls()<CR>', opts)
  vim.api.nvim_set_keymap('n', '<Leader>lo', '<cmd>lua vim.lsp.buf.outgoing_calls()<CR>', opts)

  -- Navigating in insert mode
  vim.api.nvim_set_keymap('i', '<C-h>', '<Left>', opts)
  vim.api.nvim_set_keymap('i', '<C-j>', '<Down>', opts)
  vim.api.nvim_set_keymap('i', '<C-k>', '<Up>', opts)
  vim.api.nvim_set_keymap('i', '<C-l>', '<Right>', opts)

  -- Easy align
  vim.api.nvim_set_keymap('x', '<Leader>ga', '<Plug>(EasyAlign)', opts)
  vim.api.nvim_set_keymap('n', '<Leader>ga', '<Plug>(EasyAlign)', opts)
  vim.g.easy_align_delimiters = vim.empty_dict()
  vim.g.easy_align_delimiters[':'] = {
    left_margin = 0,
    right_margin = 1,
    stick_to_left = 0,
  }

  -- General
  vim.keymap.set('i', 'jj', '<Esc>', { desc = 'jj to escape insert mode' })
  vim.keymap.set('i', '<F1>', '<Esc>:BufferPrevious<CR>')
  vim.keymap.set('i', '<F2>', '<Esc>:BufferNext<CR>')
  vim.keymap.set('i', '<F4>', '<Esc>:cd %:p:h<CR>')
  vim.keymap.set('n', ';', ':')
  vim.keymap.set('n', '<F1>', ':BufferPrevious<CR>')
  vim.keymap.set('n', '<F2>', ':BufferNext<CR>')
  vim.keymap.set('n', '<F4>', ':cd %:p:h<CR>')
  -- Undotree
  vim.keymap.set('n', '<leader>tu', ':UndotreeToggle<CR>', { desc = '[T]oggle [U]ndotree' })
  -- Neogen
  vim.keymap.set('n', '<leader>dg', ':Neogen<CR>', { desc = '[D]ocumentation [G]enerate' })

  -- Flash
  vim.keymap.set({ 'n', 'x', 'o' }, '<leader>f', function()
    require('flash').jump()
  end, { desc = '[f]lash' })
  vim.keymap.set({ 'n', 'x', 'o' }, '<leader>F', function()
    require('flash').treesitter()
  end, { desc = '[F]lash with treesitter' })
  vim.keymap.set({ 'n', 'x', 'o' }, '<leader>?', function()
    require('flash').toggle()
  end, { desc = '[F]lash with treesitter' })
end

setup()
