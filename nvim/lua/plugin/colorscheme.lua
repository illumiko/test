local config = {}
local plugins = {
	{ "NTBBloodbath/doom-one.nvim", lazy = true, config = config.doom_one },
	{ "sainnhe/everforest", lazy = true },
	{ "RishabhRD/gruvy", lazy = true },
	{ "mcchrish/zenbones.nvim", lazy = true, config = config.zenbones },
	{ "ellisonleao/gruvbox.nvim", lazy = true, config = config.gruvbox },
	{ "folke/tokyonight.nvim", lazy = false, config = config.tokyonight },
	{ "gbprod/nord.nvim", lazy = true, config = config.nord },
	{ "marko-cerovac/material.nvim", lazy = true, config = config.material },
	{
		"rockyzhang24/arctic.nvim",
		branch = "v2",
	},
	{ "atelierbram/Base2Tone-nvim" },
	-- "glepnir/zephyr-nvim",
	{ "catppuccin/nvim", name = "catppuccin", lazy = true, config = config.catppuccin },
	{ "rebelot/kanagawa.nvim", lazy = true, config = config.kanagawa }, -- kangawa}}}
	{ "tiagovla/tokyodark.nvim", lazy = true, config=config.tokyodark },
	{ "metalelf0/jellybeans-nvim", lazy = true },
}

config.tokyodark = function () 
    vim.g.tokyodark_transparent_background = true
    vim.g.tokyodark_enable_italic_comment = true
    vim.g.tokyodark_enable_italic = true
    vim.g.tokyodark_color_gamma = "1.0"
end

config.nord = function()
	require("nord").setup({
		-- your configuration comes here
		-- or leave it empty to use the default settings
		transparent = false, -- Enable this to disable setting the background color
		terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
		diff = { mode = "bg" }, -- enables/disables colorful backgrounds when used in diff mode. values : [bg|fg]
		borders = true, -- Enable the border between verticaly split windows visible
		errors = { mode = "bg" }, -- Display mode for errors and diagnostics
		-- values : [bg|fg|none]
		styles = {
			-- Style to be applied to different syntax groups
			-- Value is any valid attr-list value for `:help nvim_set_hl`
			comments = { italic = true },
			keywords = {},
			functions = {},
			variables = {},

			-- To customize lualine/bufferline
			bufferline = {
				current = {},
				modified = { italic = true },
			},
		},

		-- colorblind mode
		-- see https://github.com/EdenEast/nightfox.nvim#colorblind
		-- simulation mode has not been implemented yet.
		colorblind = {
			enable = false,
			preserve_background = false,
			severity = {
				protan = 0.0,
				deutan = 0.0,
				tritan = 0.0,
			},
		},
	})
	vim.cmd([[
    hi LineNrBelow guifg=#444444
    hi LineNrAbove guifg=#444444
	hi MDCodeBlock guibg=#222222

    ]])
end

config.kanagawa = function()
	require("kanagawa").setup({
		undercurl = true, -- enable undercurls
		commentStyle = { italic = false },
		functionStyle = { italic = false },
		keywordStyle = { bold = true },
		statementStyle = { bold = true },
		typeStyle = { bold = true, italic = false },
		variablebuiltinStyle = {},
		specialReturn = true, -- special highlight for the return keyword
		specialException = true, -- special highlight for exception handling keywords
		transparent = false, -- do not set background color
		dimInactive = true, -- dim inactive window `:h hl-NormalNC`
		globalStatus = true,
	})
	vim.cmd([=[
colorscheme kanagawa
hi link CmpPmenu Normal
]=])
end

config.gruvbox = function()
	require("gruvbox").setup({
		undercurl = true,
		underline = true,
		bold = true,
		-- italic = true,
		strikethrough = true,
		invert_selection = false,
		invert_signs = false,
		invert_tabline = false,
		invert_intend_guides = true,
		inverse = false, -- invert background for search, diffs, statuslines and errors
		contrast = "soft", -- can be "hard", "soft" or empty string
		palette_overrides = {},
		overrides = {},
		dim_inactive = true,
		transparent_mode = false,
	})
	vim.cmd([=[
hi IndentBlanklineChar guifg=none
hi TreesitterContext guibg=#222222
]=])
end

config.catppuccin = {
	flavour = "mocha", -- latte, frappe, macchiato, mocha
	background = { -- :h background
		light = "latte",
		dark = "frappe",
	},
	transparent_background = true,
	term_colors = true,
	dim_inactive = {
		enabled = true,
		shade = "dark",
		percentage = 0.65,
	},
	no_italic = true, -- Force no italic
	no_bold = true, -- Force no bold
	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
		loops = {},
		functions = { "bold" },
		keywords = { "italic" },
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = { "bold" },
		types = { "bold", "italic" },
		operators = {},
	},
	color_overrides = {
		all = {
			base = "#282828",
			mantle = "#262626",
			crust = "#1c1c1c",
		},
	},
	custom_highlights = {},
	integrations = {
		cmp = true,
		gitsigns = true,
		telescope = true,
		neotree = true,
		treesitter_context = true,
		lsp_saga = true,
		hop = true,
		barbar = true,
		treesitter = true,
		illuminate = true,
		notify = false,
		which_key = true,
		mini = true,
		navic = {
			enabled = true,
			custom_bg = "NONE",
		},
		-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
	},
}

config.doom_one = function()
	-- Add color to cursor
	vim.g.doom_one_cursor_coloring = true
	-- Set :terminal colors
	vim.g.doom_one_terminal_colors = true
	-- Enable italic comments
	vim.g.doom_one_italic_comments = true
	-- Enable TS support
	vim.g.doom_one_enable_treesitter = true
	-- Color whole diagnostic text or only underline
	vim.g.doom_one_diagnostics_text_color = true
	-- Enable transparent background
	vim.g.doom_one_transparent_background = false
	-- Pumblend transparency
	vim.g.doom_one_pumblend_enable = true
	vim.g.doom_one_pumblend_transparency = 20
	-- Plugins integration
	vim.g.doom_one_plugin_neorg = true
	vim.g.doom_one_plugin_barbar = true
	vim.g.doom_one_plugin_telescope = true
	vim.g.doom_one_plugin_neogit = false
	vim.g.doom_one_plugin_nvim_tree = false
	vim.g.doom_one_plugin_dashboard = true
	vim.g.doom_one_plugin_startify = true
	vim.g.doom_one_plugin_whichkey = true
	vim.g.doom_one_plugin_indent_blankline = true
	vim.g.doom_one_plugin_vim_illuminate = true
	vim.g.doom_one_plugin_lspsaga = false
end

config.tokyonight = {
	style = "night",
	transparent = false,
	terminal_colors = true,
	styles = {
		types = { italic = true, bold = true },
		keywords = { italic = true },
		functions = { bold = true },
		variables = {},
		sidebars = "dark",
		floats = "dark",
	},
	sidebaers = { "qf", "help" },
	dim_inactive = true,
	-- day_brightness = 0.3
	--boarderless telescope
	on_highlights = function(hl, c)
		local prompt = "#2d3149"
		hl.TelescopeNormal = {
			bg = c.bg_dark,
			fg = c.fg_dark,
		}
		hl.TelescopeBorder = {
			bg = c.bg_dark,
			fg = c.bg_dark,
		}
		hl.TelescopePromptNormal = {
			bg = prompt,
		}
		hl.TelescopePromptBorder = {
			bg = prompt,
			fg = prompt,
		}
		hl.TelescopePromptTitle = {
			bg = prompt,
			fg = prompt,
		}
		hl.TelescopePreviewTitle = {
			bg = c.bg_dark,
			fg = c.bg_dark,
		}
		hl.TelescopeResultsTitle = {
			bg = c.bg_dark,
			fg = c.bg_dark,
		}
	end,
}

config.zenbones = function()
	vim.g.zenbones_transparent_background = true
end

config.material = {

	contrast = {
		terminal = true, -- Enable contrast for the built-in terminal
		sidebars = true, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
		floating_windows = false, -- Enable contrast for floating windows
		cursor_line = false, -- Enable darker background for the cursor line
		non_current_windows = true, -- Enable contrasted background for non-current windows
		filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
	},

	styles = { -- Give comments style such as bold, italic, underline etc.
		comments = { --[[ italic = true ]]
		},
		strings = { --[[ bold = true ]]
		},
		keywords = { --[[ underline = true ]]
		},
		functions = { --[[ bold = true, undercurl = true ]]
		},
		variables = {},
		operators = {},
		types = {},
	},

	plugins = { -- Uncomment the plugins that you use to highlight them
		-- Available plugins:
		-- "dap",
		"dashboard",
		-- "gitsigns",
		-- "hop",
		-- "indent-blankline",
		-- "lspsaga",
		"mini",
		-- "neogit",
		"neorg",
		"nvim-cmp",
		"nvim-navic",
		-- "nvim-tree",
		"nvim-web-devicons",
		-- "sneak",
		"telescope",
		-- "trouble",
		"which-key",
	},

	disable = {
		colored_cursor = false, -- Disable the colored cursor
		borders = false, -- Disable borders between verticaly split windows
		background = false, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
		term_colors = false, -- Prevent the theme from setting terminal colors
		eob_lines = true, -- Hide the end-of-buffer lines
	},

	high_visibility = {
		lighter = false, -- Enable higher contrast text for lighter style
		darker = false, -- Enable higher contrast text for darker style
	},

	lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )

	async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)

	custom_colors = nil, -- If you want to override the default colors, set this to a function

	custom_highlights = {}, -- Overwrite highlights with your own
}

return plugins
