return {
  {
    -- Load the Catppuccin theme
    'catppuccin/nvim',
    as = 'catppuccin',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'catppuccin'
    end,
    opts = {
      background = {
        light = 'latte',
        dark = 'mocha',
      },
      term_colors = false,
      integrations = {
        cmp = true,
        gitsigns = true,
        telescope = true,
        lualine = true,
      },
    },
  },

  {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = true,
        theme = 'catppuccin',
        component_separators = '|',
        section_separators = '',
      },
    },
  },

  {
    -- Sync dark/light colorscheme with the OS
    'cormacrelf/dark-notify',
    init = function()
      require('dark_notify').run()
    end,
  },

  {
    -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = { indent = { char = '┊' } },
  },
}
