
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
use 'wbthomason/packer.nvim'
  
use 'navarasu/onedark.nvim'
use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    event = "BufWinEnter",
    config = "require('lualine-config')"
  }
use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    cmd = "NvimTreeToggle",
    config = "require('nvim-tree-config')"
  }

use {'akinsho/bufferline.nvim', 
          requires = {'kyazdani42/nvim-web-devicons'},
          config = "require('bufferline-config')"
        }

use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} },
  config = "require('telescope-config')"
}

use {
    'nvim-treesitter/nvim-treesitter',
    run = ":TSUpdate",
    event = "BufWinEnter",
    config = "require('treesitter-config')"
  }


use {'neovim/nvim-lspconfig', config = "require('lsp')"}
use {'hrsh7th/cmp-nvim-lsp'}
use {'hrsh7th/cmp-buffer'}
use {'hrsh7th/nvim-cmp'}
use {'hrsh7th/cmp-vsnip'}
use {'hrsh7th/vim-vsnip'}
use {'onsails/lspkind-nvim'}
use {'williamboman/nvim-lsp-installer'}

use {'norcalli/nvim-colorizer.lua', config = "require('colorizer-config')", event = "BufRead"}
use {
    'lewis6991/gitsigns.nvim',
    requires = {'nvim-lua/plenary.nvim'},
    config = "require('gitsigns-config')"
  }
use {'tami5/lspsaga.nvim', config = "require('lspsaga-config')"}
use {"akinsho/toggleterm.nvim", config = "require('toggleterm-config')"}
use {"terrortylor/nvim-comment", config = "require('comment-config')"}

use {
    "lukas-reineke/indent-blankline.nvim",
    config = "require('blankline-config')",
    event = "BufRead"
  }

use {'windwp/nvim-ts-autotag', event = "InsertEnter", after = "nvim-treesitter"}
use {'p00f/nvim-ts-rainbow', after = "nvim-treesitter"}
use {'windwp/nvim-autopairs', config = "require('autopairs-config')", after = "nvim-cmp"}

use {'folke/which-key.nvim', event = "BufWinEnter", config = "require('whichkey-config')"}
-- use {'glepnir/dashboard-nvim', event = "BufRead", config = "require('dashboard-config')"}

use {
    'goolord/alpha-nvim',
    config = "require('alpha-config')"
}

use {
  "ahmedkhalf/project.nvim",
  config = "require('project-config')"
}

use {'rcarriga/nvim-notify',
    config = "require('notify-config')"
  }

  use{
    'jose-elias-alvarez/null-ls.nvim',
    config = "require('null-ls-config')"
}

end)
