vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Plugins
  use 'jiangmiao/auto-pairs'
  use 'tpope/vim-surround'
  use 'folke/tokyonight.nvim'
  --use 'vim-airline/vim-airline'
  --use 'vim-airline/vim-airline-themes'
  --use '~/.fzf'
end)
