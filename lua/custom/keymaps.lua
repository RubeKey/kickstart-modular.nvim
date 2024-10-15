# Add your custom keymaps here! No changes in the common setup will be placed here, so no merge conflicts!

  vim.keymap.set('n', ':bd', ':Bdelete<CR>', {desc = "Delete buffer but keep its window/tab open"})
  vim.keymap.set('n', '<leader>bd', ':Bdelete<CR>', {desc = "Delete buffer but keep its window/tab open"})

  vim.keymap.set("n", "<leader>mo", function()
    require("menu").open("default")
  end, {desc = "[M]enu [O]pen"})

  vim.keymap.set("n", "<RightMouse>", function()
    vim.cmd.exec '"normal! \\<RightMouse>"'

    local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
    require("menu").open(options, { mouse = true })
    end, {}
  )
