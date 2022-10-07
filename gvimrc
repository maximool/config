" opens file explorer panel on startup
autocmd VimEnter * Vexplore
autocmd VimEnter * wincmd l
autocmd VimEnter * startinsert
" https://github.com/altercation/vim-colors-solarized
colorscheme solarized
set background=light
" https://vim.fandom.com/wiki/Accessing_the_system_clipboard
set clipboard^=unnamed,unnamedplus
" Consolas:h10
set guifont=Inconsolata\ Medium\ 10
" https://vim.fandom.com/wiki/Hide_toolbar_or_menus_to_see_more_text
set guioptions-=L
set guioptions-=T
set guioptions-=m
set guioptions-=r
" https://vim.fandom.com/wiki/Maximize_or_set_initial_window_size
set lines=9999 columns=9999
" removes `:intro` buffer on startup
set shortmess+=I
