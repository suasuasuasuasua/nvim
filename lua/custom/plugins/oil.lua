vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    keymaps = {
      ['<C-l>'] = 'actions.select',
      ['<C-h>'] = { 'actions.parent', mode = 'n' },
      ['<C-x>'] = { 'actions.select', opts = { horizontal = true } },
      ['<C-s>'] = false,
      ['<C-v>'] = { 'actions.select', opts = { vertical = true } },
      ['<C-r>'] = { 'actions.refresh' },
      ['y.'] = { 'actions.copy_entry_path' },
      ['<C-d>'] = { 'actions.preview_scroll_down' },
      ['<C-u>'] = { 'actions.preview_scroll_up' },
    },
  },
  -- Optional dependencies
  -- dependencies = { { 'echasnovski/mini.icons', opts = {} } },
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
}
