-- [[ plug.lua ]]

return require('packer').startup(function()
  -- [[ Navigation ]]
  use {
        'nvim-treesitter/nvim-treesitter',           -- syntax tree builder
        run = ':TSUpdate'
  }
  use {                                              -- filesystem navigation
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'        -- filesystem icons
  }
  use {
    'nvim-telescope/telescope.nvim',                 -- fuzzy finder
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- [[ Theme ]]
--  use { 'mhinz/vim-startify' }                       -- start screen
  use { 'DanilaMihailov/beacon.nvim' }               -- cursor jump
  use {
    'nvim-lualine/lualine.nvim',                     -- statusline
    requires = {'kyazdani42/nvim-web-devicons',
                opt = true}
  }
  use { 'Mofiqul/dracula.nvim' }

  -- [[ Dev ]]
  use { 'majutsushi/tagbar' }                        -- code structure
  use { 'Yggdroot/indentLine' }                      -- see indentation
  use { 'tpope/vim-fugitive' }                       -- git integration
  use { 'junegunn/gv.vim' }                          -- commit history
  use { 'windwp/nvim-autopairs' }                    -- auto-insert pairing symbols
  use { 'tpope/vim-commentary' }                     -- shortcuts for commenting code
  use { 'tpope/vim-surround' }                       -- surround with ease
  use { 'tpope/vim-repeat' }                         -- enhance vim's '.' (repeat last action)
  use { 'tpope/vim-speeddating' }                    -- advanced dates
  use { 'tpope/vim-eunuch' }                         -- sugar for the UNIX shell commands
  use { 'godlygeek/tabular' }                        -- easy alignment

  if packer_bootstrap then
    require('packer').sync()
  end
end)
