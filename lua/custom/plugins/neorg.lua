-- https://github.com/nvim-neorg/neorg
return {
  'nvim-neorg/neorg',
  lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
  version = '*', -- Pin Neorg to the latest stable release
  config = function()
    require('neorg').setup {
      load = {
        ['core.concealer'] = {
          config = {
            icon_preset = 'varied',
          },
        },
        ['core.defaults'] = {},
        ['core.dirman'] = {
          config = {
            workspaces = {
              default = '~/Documents/vaults',
            },
            default_workpace = 'default',
            index = 'index.norg',
          },
        },
        ['core.summary'] = {},
      },
    }
  end,
}
