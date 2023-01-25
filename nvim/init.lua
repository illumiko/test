require("user.settings")
require("manager")
require("user.keymaps")
require("impatient")
require("user.autocmds")
require("plugin.lsp")
-- require("plugin.session_manager")
-- require("plugin.window_picker")
require("user.colorscheme")
require("user.highlights")
require("plugin.indent_lines")
require("plugin.start_page")
require("range-highlight").setup()
require("Navigator").setup()
-- require("plugin.autosave")
require("plugin.explorer")
require("plugin.which_key")
-- require("plugin.cybu_conf")
require("plugin.buf_deleto")
require("plugin.barbar")
require("plugin.treesitter")
require("plugin.treesitter_context")
require("plugin.org")
require("plugin.completion")
require("plugin.luasnip_conf")
require("plugin.comment")
require("plugin.autopairs")
require("plugin.status_bar")
require("plugin.tog_term")
require("plugin.git_signs")
require("plugin.format.format")
require("plugin.cursor_context")
require("plugin.telescope_conf")
require("plugin.due_conf")
require("plugin.ufo_conf")
-- [[ --[[ require("plugin.winbar_config") ]]
if vim.g.neovide then
    require("user.neovide")
end
