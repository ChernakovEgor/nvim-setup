-- local status, lualine = pcall(require, "lualine")
-- if not status then
--   print("Lualine not installed")
--   return
-- end
--
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators =  '|',
    -- component_separators = { left = '', right = ''},
    -- section_separators = { left = '', right = ''},
    section_separators = { left = '', right = '' },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {
      { 'mode', separator = { left = '' }, right_padding = 2 },
    },

    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'filetype'},
    lualine_y = {'searchcount'},
    lualine_z = {
      {'location', separator = {  right = '' }, left_padding = 2 },
    }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'filetype'},
    lualine_y = {'location'},
    lualine_z = {}
  },
  tabline = {
    lualine_a = {
    },
    lualine_b = {
              {
        'buffers',
      symbols = {
        modified = ' ●',      -- Text to show when the buffer is modified
        alternate_file = '', -- Text to show to identify the alternate file
        directory =  '',     -- Text to show when the buffer is a directory
      },
        -- buffers_color = {
        --   active = { bg = 'background', fg =  'foreground' },
        --   inactive = { bg =  'black', fg =  'foreground' },
      },
        -- separator = { left = '|', right = '|' },
        -- right_padding = 2,
       --}

    },
    lualine_c = {
    } ,
    lualine_x = {},
    lualine_y = {},
    lualine_z = {
      { 'tabs', separator = { left = '', right = '' }, left_padding = 2 },
    }
  },
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
