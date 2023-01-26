--packer plugins
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'



	--Vim commentary
	use {'tpope/vim-commentary'}

	-- Ale
	use {'dense-analysis/ale'}

	--Coc
	use {'neoclide/coc.nvim', branch = 'release'}

	--Ultisnippets
	-- use {'SirVer/ultisnips'}
	
	-- Tree
	use {'nvim-tree/nvim-tree.lua'}

    --Vim-Airline
    use {'vim-airline/vim-airline'}
    use {'vim-airline/vim-airline-themes'}

    --Fugitive
    use {'tpope/vim-fugitive'}

    --Polyglot
    use {'sheerun/vim-polyglot'}

    --Gruvbox
    -- use {'morhetz/gruvbox'}

	--Indent line
	use {'Yggdroot/indentLine'}

	--Vim obsession
	use {'tpope/vim-obsession'}

	-- Emmet abbreviation
	use {'mattn/emmet-vim'}

end)
