require('core.maps')

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

nmap('<C-i>', ':PackerSync<CR>')

return require('packer').startup({function(use)
	use(require('plugins.config.dashboard'))
	use(require('plugins.config.telescope'))
	use(require('plugins.config.kanagawa'))
	use(require('plugins.config.lspsaga'))
	use(require('plugins.config.conjure'))
	use(require('plugins.config.fugitive'))
	use(require('plugins.config.lsp-installer'))
	use(require('plugins.config.nvim-cmp'))
	use(require('plugins.config.bufferline'))
	use(require('plugins.config.trouble'))
	use(require('plugins.config.which_key'))
	use(require('plugins.config.floaterm'))
	use(require('plugins.config.nvim-tree'))
	use(require('plugins.config.ultisnips'))
	use(require('plugins.config.neoscroll'))
	use(require('plugins.config.tags'))
	use(require('plugins.config.emmet'))
	use(require('plugins.config.vim-test'))
	use(require('plugins.config.neoclip'))
	use(require('plugins.config.emoji'))
	use(require('plugins.config.tables'))
	use(require('plugins.config.todo'))
	use(require('plugins.config.lightspeed'))
	use(require('plugins.config.treesitter'))
	use(require('plugins.config.neoformat'))
	use(require('plugins.config.lualine'))
	use(require('plugins.config.comment-box'))
	use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	use('tversteeg/registers.nvim')
	use('wbthomason/packer.nvim')
	use('nvim-lua/popup.nvim')
	use('nvim-lua/plenary.nvim')
	use('elixir-editors/vim-elixir')
	use('tpope/vim-endwise')
	use('junegunn/goyo.vim')
	use('tpope/vim-obsession')
	use('junegunn/fzf.vim')
	use('junegunn/fzf')
	use('kyazdani42/nvim-web-devicons')
	use('tpope/vim-commentary')
	use('jiangmiao/auto-pairs')
	use('alvan/vim-closetag')
	use('moll/vim-bbye')
	use('xolox/vim-misc')
	use('neovim/nvim-lspconfig')
	use('hrsh7th/cmp-nvim-lsp')
	use('hrsh7th/cmp-buffer')
	use('hrsh7th/cmp-path')
	use('hrsh7th/cmp-cmdline')
	use('rhysd/git-messenger.vim')
	use('ellisonleao/glow.nvim', {branch = 'main'})
	use('tpope/vim-repeat')
	use('quangnguyen30192/cmp-nvim-ultisnips')
	use('lewis6991/impatient.nvim')

	if packer_bootstrap then
		require('packer').sync()
	end
end,
config = {
	autoremove = true,
	display = {
		prompt_border = 'none',
		open_fn = function()
			return require('packer.util').float({ border = 'none' })
		end
	}
}})
