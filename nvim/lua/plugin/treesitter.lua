local M = {}
M.config = function()
	require("nvim-treesitter.configs").setup({
		playground = {
			enable = true,
			disable = {},
			updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
			persist_queries = false, -- Whether the query persists across vim sessions
			keybindings = {
				toggle_query_editor = "o",
				toggle_hl_groups = "i",
				toggle_injected_languages = "t",
				toggle_anonymous_nodes = "a",
				toggle_language_display = "I",
				focus_language = "f",
				unfocus_language = "F",
				update = "R",
				goto_node = "<cr>",
				show_help = "?",
			},
		},
		query_linter = {
			enable = true,
			use_virtual_text = true,
			lint_events = { "BufWrite", "CursorHold" },
		},
		ignore_install = { "" }, -- List of parsers to ignore installing
		highlight = {
			enable = true,
			disable = { "html", "css", "sass", "latex" },
		},
		indent = {
			enable = true,
			disable = {},
		},
		-- context_commentstring = {
		--   enable = true
		-- },
		autotag = {
			enable = true,
		},
		markid = {
			enable = true,
		},
		rainbow = {
			enable = true,
			extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
			max_file_lines = 10000, -- Do not enable for files with more than n lines, int
			-- termcolors = {} -- table of colour name strings
		},
		-- ensure_installed = {
		-- 	"javascript",
		-- 	"vue",
		-- 	"html",
		-- 	"css",
		-- 	"scss",
		-- 	"python",
		-- },
	})
end
M.lazy = {
	"nvim-treesitter/nvim-treesitter",
	events = { "BufEnter" },
	build = ":TSUpdate",
	config = M.config,
	dependencies = {
		"nvim-treesitter/nvim-treesitter-context",
		"nvim-treesitter/playground",
		-- "haringsrob/nvim_context_vt",
		"windwp/nvim-ts-autotag",
		"p00f/nvim-ts-rainbow",
		"David-Kunz/markid",
		-- {
		-- 	"lewis6991/spellsitter.nvim",
		-- 	config = function()
		-- 		require("spellsitter").setup()
		-- 	end,
		-- },
	},
}
return M
