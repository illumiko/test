return {
	-- [[#Dependencies]]

	-- [[#LSP]]
	{ "mhartington/formatter.nvim" },
	--[[Nvim config]]
	-- "folke/neodev.nvim",

	--#firevim

	{
		"glacambre/firenvim",

		-- Lazy load firenvim
		-- Explanation: https://github.com/folke/lazy.nvim/discussions/463#discussioncomment-4819297
		cond = not not vim.g.started_by_firenvim,
		build = function()
			require("lazy").load({ plugins = "firenvim", wait = true })
			vim.fn["firenvim#install"](0)
		end,
	},

	-- #winbar

	{ "tamton-aquib/staline.nvim", events = { "BufEnter" } },

	--[[#Utility]]
	-- { "mvllow/modes.nvim" },
	{
		"cpea2506/relative-toggle.nvim",
		config = function()
			require("relative-toggle").setup({
				pattern = "*",
				events = {
					on = { "CmdlineLeave" },
					off = { "CmdlineEnter" },
				},
			})
		end,
	},
	"wellle/targets.vim", -- better surround motions
	-- "xiyaowong/nvim-transparent",
	"matze/vim-move",
	"romainl/vim-devdocs",
	"osyo-manga/vim-over",
	"jghauser/mkdir.nvim",
	{
	},
	"windwp/nvim-autopairs",
	-- "SmiteshP/nvim-navic",
	"numToStr/Navigator.nvim",
	-- {{{,

	-- {
	-- 	"nkakouros-original/numbers.nvim",
	-- 	config = function()
	-- 		require("numbers").setup({
	-- 			exclude_filetypes = { "alpha", "toggleterm", "TelescopePrompt", "neo-tree" },
	-- 		})
	-- 	end,
	-- },
    require("plugin.close_buffer").lazy,
	--[[ {
		"beauwilliams/focus.nvim",
		config = function()
			require("focus").setup({ width = 95 })
		end,
	}, ]]
	{
		"lewis6991/impatient.nvim",
	},
	{
		"phaazon/hop.nvim",
		as = "hop",
		config = function()
			require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
		end,
		keys = {
			-- { "f", ":HopWordCurrentLine<CR>", desc = "Line hop", noremap = true, silent = true },
			-- { "F", ":HopChar1CurrentLine<CR>", desc = "Char hop", noremap = true, silent = true },
			{ "<leader>hl", ":HopLine<CR>", desc = "Line Hop", noremap = true, silent = true },
			{ "<leader>hc", ":HopChar1<CR>", desc = "Char Hop", noremap = true, silent = true },
			{ "<leader>hw", ":HopWord<CR>", desc = "Word Hop", noremap = true, silent = true },
		},
	},
	-- {
	-- 	"ghillb/cybu.nvim",
	-- 	branch = "main", -- timely updates
	-- 	-- branch = "v1.x", -- won't receive breaking changes
	-- },
	{
		"tiagovla/scope.nvim",
		config = function()
			require("scope").setup()
		end,
	}, -- }}}

	--[[#Markdown Preview]]
	{ "ellisonleao/glow.nvim" },
	{ "corriander/vim-markdown-indent", ft = "markdown" },

	--[[#File Browser]]
    require("plugin.explorer").lazy,
	--[[#Note talking/Scheduling etc]]
	-- [[NORG]]
	{ "lervag/vimtex" },

	-- [[nvim greeter]]
    require("plugin.alpha").lazy,

	--[[#Syntax/Treesitter]]
    require("plugin.treesitter").lazy,

	--[[#session]]
	"tpope/vim-obsession",

	--[[#git]]
	"lewis6991/gitsigns.nvim",

	--[terminal]]

	--[[#Telescope]]
	{
	},

	--[[#colorscheme]]
