-- Additional shared keybinds for keysight-jasper basic setup
-- NOTE: Add your own in keymaps.lua in this folder
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
