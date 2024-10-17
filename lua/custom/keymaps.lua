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

  local builtin = require 'telescope.builtin'
  local utils = require 'telescope.utils'

  vim.keymap.set('n', '<leader>sf', function()
  -- A lambda function because we want to evaulate the git command and cwd at runtime
    local cwd = vim.uv.cwd
    local top
    local git_root, ret = utils.get_os_command_output({ "git", "rev-parse", "--show-toplevel" }, vim.uv.cwd())
    if ret ~= 0 then
      top = cwd
    else
      top = git_root[1]
    end
    builtin.find_files({
    cwd = top
    })
    end, { desc = '[S]earch [F]iles' })
