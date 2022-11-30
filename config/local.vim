let g:elite_mode = 1                     " Set arrow-keys to window resize
let g:global_symbol_padding = '  '       " Padding after nerd symbols
let g:tabline_plugin_enable = 0          " Disable built-in tabline
let g:enable_universal_quit_mapping = 0  " Disable normal 'q' mapping
let g:disable_mappings = 0               " Disable config/mappings.vim

" Disable user_theme autocommand
" autocmd! user_theme
" autocmd! ColorScheme *

" My key mappings {{{
" -------------------
" sbp trigger bufferline picker
" nnoremap [Window]bp  :BufferLinePick<CR>
nmap ]b <cmd>bnext<CR>
nmap [b <cmd>bprev<CR>

" close buffer
nnoremap <leader>x <cmd>bdelete<CR>

" Window Navigation using Wezterm
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k


lua << EOF
-- Open in browser
vim.api.nvim_set_keymap('n', '<leader>gB', '<cmd>lua require"gitlinker".get_buf_range_url("n", {action_callback = require"gitlinker.actions".open_in_browser})<cr>', {desc = "Open Github browser", silent = true})
vim.api.nvim_set_keymap('v', '<leader>gB', '<cmd>lua require"gitlinker".get_buf_range_url("v", {action_callback = require"gitlinker.actions".open_in_browser})<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>ft', [[<cmd>:FloatermToggle<CR>]], { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<leader>gY', '<cmd>lua require"gitlinker".get_repo_url()<cr>', {silent = true})
--vim.api.nvim_set_keymap('n', '<leader>gB', '<cmd>lua require"gitlinker".get_repo_url({action_callback = require"gitlinker.actions".open_in_browser})<cr>', {silent = true})
EOF
" }}}

"My editor settings {{{
" ------------------
set textwidth=100                " Text width maximum chars before wrapping
set wrap                         " wrap long lines
set showmatch                    " Show the matching bracket
set matchpairs=(:),{:},[:]       " List of characters we expect in balanced pairs
" }}}

" Auto Commands {{{
" I couldn't get this to work: https://github.com/voldikss/vim-floaterm/issues/187
autocmd FileType floaterm tnoremap <buffer> <Esc> q
" }}}

" vim: set foldmethod=marker ts=2 sw=2 tw=100 noet :
