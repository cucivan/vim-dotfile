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

local plugin_specs = {
	{
	    "folke/tokyonight.nvim",
	    lazy = false, -- make sure we load this during startup if it is your main colorscheme
	    priority = 1000, -- make sure to load this before all the other start plugins
	    config = function()
	      -- load the colorscheme here
	      vim.cmd([[colorscheme tokyonight]])
	    end,
	},
	{
	    "folke/which-key.nvim",
            event = "VeryLazy",
	    init = function()
	    vim.o.timeout = true
	    vim.o.timeoutlen = 300
	  end,
    	},

	{
	     "yamatsum/nvim-cursorline",
	     config = function()
		     require("config.cursorline")
	     end,
	},
	{
		"kyazdani42/nvim-web-devicons",
	},
	{
	     "nvim-lualine/lualine.nvim",
	     config = function()
		     require("config.statusline")
	     end,
       },

       {
	       'akinsho/bufferline.nvim', 
         	version = "*", 
		dependencies = 'nvim-tree/nvim-web-devicons',
		config = function()
			require("config.bufferline")
		end,
	},
	{
	    "iamcco/markdown-preview.nvim",
	    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	    ft = { "markdown" },
	    build = function() vim.fn["mkdp#util#install"]() end,
	},





}


require("lazy").setup(plugin_specs)
