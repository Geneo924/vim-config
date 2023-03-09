local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]


packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use { "ellisonleao/gruvbox.nvim" } -- this is for gruvbox theme
  use 'windwp/nvim-autopairs' -- this is for nvim-autopairs
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'windwp/nvim-ts-autotag'
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'simrat39/rust-tools.nvim'
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client
  use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    } -- for parsing 
  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
	use "hrsh7th/cmp-buffer" -- buffer completions
	use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/vim-vsnip"
  use "hrsh7th/vim-vsnip-integ"
	use "saadparwaiz1/cmp_luasnip" -- snippet completions
	use "hrsh7th/cmp-nvim-lsp"
	use "hrsh7th/cmp-nvim-lua"

	-- snippets
	use "L3MON4D3/LuaSnip"
	use "rafamadriz/friendly-snippets"

	-- LSP
  use "williamboman/mason.nvim" -- new lsp installer 
  use {'dsznajder/vscode-es7-javascript-react-snippets',
      run = 'yarn install --frozen-lockfile && yarn compile'
      }
  use "williamboman/mason-lspconfig.nvim"
	use "neovim/nvim-lspconfig" -- enable LSP
	use "williamboman/nvim-lsp-installer" -- simple to use language server installer
	use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
end)
