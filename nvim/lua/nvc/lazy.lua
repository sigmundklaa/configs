
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.4',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    'rebelot/kanagawa.nvim',
    'folke/tokyonight.nvim',
    'bluz71/vim-nightfly-colors',
    'NLKNguyen/papercolor-theme',
    'Mofiqul/dracula.nvim',
    'ful1e5/onedark.nvim',
    'projekt0n/github-nvim-theme',
    'EdenEast/nightfox.nvim',
    'nvim-lualine/lualine.nvim',
    {
       'stevearc/oil.nvim',
        opts = {},
        -- Optional dependencies
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },
    {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
    'theprimeagen/harpoon',
    'mbbill/undotree',
    'tpope/vim-fugitive',
    'tpope/vim-surround',
    {
        'lervag/vimtex',
        init = function()
            vim.g.vimtex_view_general_viewer = 'okular'
            vim.g.vimtex_view_general_options = "--unique file:@pdf\\#src:@line@tex"
        end
    },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        lazy = true,
        config = false,
    },
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            {'hrsh7th/cmp-nvim-lsp'},
        }
    },
    -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            {'L3MON4D3/LuaSnip'}
        },
    },
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim'
})
