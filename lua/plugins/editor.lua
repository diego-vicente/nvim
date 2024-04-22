return {
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- Useful plugin to show you pending keybinds.
  { 'folke/which-key.nvim', opts = {} },

  -- Send code from nvim to tmux
  -- TODO: change this to manage wezterm instead of Tmux
  {
    'jpalardy/vim-slime',
    config = function()
      vim.g.slime_target = 'tmux'
      vim.g.slime_paste_file = '/tmp/slime_paste'

      vim.keymap.set(
        'v',
        '<leader>ts',
        '<Plug>SlimeRegionSend<cr>',
        { desc = '[T]mux [S]end region' }
      )
      vim.keymap.set(
        'n',
        '<leader>ts',
        '<Plug>SlimeParagraphSend<cr>',
        { desc = '[T]mux [S]end paragraph' }
      )
      vim.keymap.set(
        'o',
        '<leader>ts',
        '<Plug>SlimeSend<cr>',
        { desc = '[T]mux [S]end' }
      )

      -- TODO: not working yet
      -- vim.api.nvim_create_user_command(
      --   'SlimeOverride_EscapeText_sql',
      --   function (opts)
      --     local cmd = 'bq query --use_legacy_sql=false'
      --     local escaped = opts.fargs[1]:gsub('\'', '"')
      --     return cmd .. ' \' '.. escaped .. ' \' '
      --   end,
      --   { nargs = 1, force = true }
      -- )
    end,
  },

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },
}
