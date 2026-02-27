-- https://github.com/obsidian-nvim/obsidian.nvim
return {
  'obsidian-nvim/obsidian.nvim',
  version = '*', -- use latest release, remove to use latest commit
  ft = 'markdown',
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    legacy_commands = false, -- this will be removed in the next major release
    workspaces = {
      {
        name = 'personal',
        path = '$HOME/Documents/vaults/personal',
      },
      {
        name = 'productivity',
        path = '$HOME/Documents/vaults/productivity',
      },
    },
    notes_subdir = 'fleeting',
    daily_notes = {
      folder = 'dailies',
      date_format = '%Y-%m-%d',
      alias_format = '%B %-d, %Y',
      default_tags = { 'daily-notes' },
      template = 'daily.md',
    },
    completion = {
      nvim_cmp = false,
      blink = true,
      min_chars = 2,
    },
    templates = {
      folder = 'templates',
      date_format = '%Y-%m-%d-%a',
      time_format = '%H:%M',
    },

    new_notes_location = 'notes_subdir',

    note_id_func = function(title)
      local suffix = ''
      if title ~= nil then
        -- If title is given, transform it into valid file name.
        suffix = title:gsub(' ', '-'):gsub('[^A-Za-z0-9-]', ''):lower()
      else
        -- If title is nil, just add 4 random uppercase letters to the suffix.
        for _ = 1, 4 do
          suffix = suffix .. string.char(math.random(65, 90))
        end
      end

      return tostring(os.date '%Y-%m-%dT%H-%M-%S') .. '_' .. suffix
    end,

    ui = {
      enable = false,
    },
  },
}
