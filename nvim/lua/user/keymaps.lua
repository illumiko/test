local map = require("utils.maps").map
local nmap = require("utils.maps").nmap
local imap = require("utils.maps").imap
local cmap = require("utils.maps").cmap
local opts = require("utils.maps").opts
local ls = require("luasnip")

nmap("<Space>", "<NOP>", opts("wk"))
vim.g.mapleader = " "
-- vim.cmd([[inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"]])
-- [[Normal Mode]]

vim.cmd([[ "sets the close key for toggle term
" set
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-\> <Cmd>exe v:count1 . "ToggleTerm"<CR>
]])

--[[for wrapped lines]]
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- better <c-d> and <c-u>
-- "<Cmd>lua vim.cmd('normal! n'); MiniAnimate.execute_after('scroll', 'normal! zvzz')<CR>"

nmap("<c-d>","<Cmd>lua vim.cmd('normal! <c-d>'); MiniAnimate.execute_after('scroll', 'normal! zz')<CR>",opts(""))
nmap("<c-u>","<Cmd>lua vim.cmd('normal! <c-u>'); MiniAnimate.execute_after('scroll', 'normal! zz')<CR>",opts(""))
nmap("n","<Cmd>lua vim.cmd('normal! n'); MiniAnimate.execute_after('scroll', 'normal! zvzz')<CR>", opts(""))
nmap("N","<Cmd>lua vim.cmd('normal! N'); MiniAnimate.execute_after('scroll', 'normal! zvzz')<CR>", opts(""))

------------------
--[[Window Change]]
------------------
nmap("<c-j>","<c-w>j",opts(""))
nmap("<c-k>","<c-w>k",opts(""))
nmap("<c-h>","<c-w>h",opts(""))
nmap("<c-l>","<c-w>l",opts(""))

------------------
--[[proper copy]]
------------------
-- Normal mode
map("n", "Y", '"+y$', opts(""))
map("n", "y", '"+y', opts(""))
map("n", "yi]", '"+yi]', opts(""))
map("n", [[yi']], [["+yi']], opts(""))
map("n", [[yi}]], [["+yi}]], opts(""))
map("n", [[yi"]], [["+yi"]], opts(""))
map("n", [[yi)]], [["+yi)]], opts(""))
-- Visual Mode
map("v", "Y", '"+y$', opts(""))
map("v", "y", '"+y', opts(""))
map("v", "yi]", '"+yi]', opts(""))
map("v", [[yi']], [["+yi']], opts(""))
map("v", [[yi}]], [["+yi}]], opts(""))
map("v", [[yi"]], [["+yi"]], opts(""))
map("v", [[yi)]], [["+yi)]], opts(""))

------------------
--[[Source config]]
------------------
nmap("<leader>ls", ":source %<cr>", opts("Reload current file"))

------------------
--[[Quit]]
------------------
nmap("<leader>Q", ":wqa<CR>", opts("Quit"))

------------------
--[[focus Management]]
------------------
nmap("<C-f>", "FocusMaximise <CR>", opts("Max width"))

------------------
-- [[Norg]]
------------------
-- nmap("<leader>oNjtcd", ":Neorg journal today<CR>", opts("Journal custom"))
-- nmap("<leader>oNjty", ":Neorg journal yesterday<CR>", opts("Journal yesterday"))
-- nmap("<leader>oNjtt", ":Neorg journal tomorrow<CR>", opts("Journal tomorrow"))
nmap("<M-1>", ":e ~/Documents/norg/main/index.norg<CR>", opts(""))

------------------
--[[UFO]]
------------------

------------------
--[[format]]
------------------
nmap("<leader>F", ":FormatWrite<CR>", opts("Format"))

------------------
--[[luasnip]]
------------------

vim.cmd([[
" press <Tab> to expand or jump in a snippet. These can also be mapped separately
" via <Plug>luasnip-expand-snippet and <Plug>luasnip-jump-next.
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<cmd>lua require("luasnip").jump(1)<cr>' : '<Tab>' 
" -1 for jumping backwards.
inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>
snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>
]])

-- [[lsp]]
------------------
-- [[no hl]]
------------------
nmap("<Leader>H", ":set hlsearch!<CR>", opts("Clear hls"))

-- [[better split management]]
-- nmap("<C-h>", ":NavigatorLeft<CR>", opts("Window Left"))
-- nmap("<C-j>", ":NavigatorDown<CR>", opts("Window Down"))
-- nmap("<C-k>", ":NavigatorUp<CR>", opts("Window Up"))
-- nmap("<C-l>", ":NavigatorRight<CR>", opts("Window Right"))

------------------
-- [[swap windows]
------------------
nmap("<C-x>", "<C-w>x", opts(""))

--[[tabline]]
nmap("<leadert>tp", ":tabprevious<CR>", opts("Tab Prev"))
nmap("<leader>tn", ":tabnext<CR>", opts("Tab Next"))

------------------
-- [[buffer switch]]
------------------
nmap("<S-l>", ":BufferNext<CR>", opts(""))
nmap("<S-h>", ":BufferPrevious<CR>", opts(""))

-- Sort automatically by...

--inert mode

vim.keymap.set("i", "<c-s>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end)

vim.keymap.set("i", "<c-e>", function()
	if ls.choice_active() then
		ls.change_choice(-1)
	end
end)

------------------
-- better ESC
------------------
imap("jk", "<cmd>LuaSnipUnlinkCurrent<CR><ESC>", opts(""))
cmap("jk", "<ESC>",opts(""))

imap("<", "<", opts(""))

--better backspace
imap("<C-h>", "<BS>", opts(""))

--[===[visiual mode]===]

--better indenting
map("v", "<", "<gv", opts(""))
map("v", ">", ">gv", opts(""))

--[===[visual block]===]
-- map('x', '<leader>c',':Commentary<CR>', opts(""))
--moving blocks of code
map("x", "K", ":move '<-2<CR>gv-gv", opts(""))
map("x", "J", ":move '>+1<CR>gv-gv", opts(""))
