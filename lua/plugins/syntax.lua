return {
  -- Some support for extra languages
  'imsnif/kdl.vim',  -- https://kdl.dev/

  {
    -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
  },
}
