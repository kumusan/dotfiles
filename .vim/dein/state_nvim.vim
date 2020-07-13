if g:dein#_cache_version !=# 150 || g:dein#_init_runtimepath !=# '/Users/kumu/.vim/dein/repos/github.com/Shougo/dein.vim,/Users/kumu/.config/nvim,/etc/xdg/nvim,/Users/kumu/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/usr/local/Cellar/neovim/0.4.3/share/nvim/runtime,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/kumu/.local/share/nvim/site/after,/etc/xdg/nvim/after,/Users/kumu/.config/nvim/after' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/kumu/.config/nvim/init.vim', '/Users/kumu/.config/nvim/dein.toml', '/Users/kumu/.config/nvim/lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/kumu/.vim/dein'
let g:dein#_runtime_path = '/Users/kumu/.vim/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/Users/kumu/.vim/dein/.cache/init.vim'
let &runtimepath = '/Users/kumu/.vim/dein/repos/github.com/Shougo/dein.vim,/Users/kumu/.config/nvim,/etc/xdg/nvim,/Users/kumu/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/Users/kumu/.vim/dein/repos/github.com/autozimu/LanguageClient-neovim_next,/Users/kumu/.vim/dein/repos/github.com/prettier/vim-prettier,/Users/kumu/.vim/dein/.cache/init.vim/.dein,/usr/local/Cellar/neovim/0.4.3/share/nvim/runtime,/Users/kumu/.vim/dein/.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/kumu/.local/share/nvim/site/after,/etc/xdg/nvim/after,/Users/kumu/.config/nvim/after'
filetype off
source ~/.config/nvim/plugins/vim-prettier.rc.vim
source ~/.config/nvim/plugins/vim-vue.rc.vim
source ~/.config/nvim/plugins/anzu.rc.vim
source ~/.config/nvim/plugins/syntastic-local-eslint.rc.vim
source ~/.config/nvim/plugins/syntastic.rc.vim
source ~/.config/nvim/plugins/rust.rc.vim
source ~/.config/nvim/plugins/vim-pug-complete.rc.vim
source ~/.config/nvim/plugins/LanguageClient-neovim.rc.vim
    set noshowmode
    set laststatus=2
    let g:lightline = { 'colorscheme': 'wombat', 'active': {   'left': [     ['mode', 'paste'],     ['gitbranch', 'readonly', 'filename', 'modified'],     ['lsp'],   ] }, 'component_function': {   'gitbranch': 'fugitive#head',   'lsp': 'LSPStatus', }, 'separator': { 'left': "\u2b80", 'right': "\u2b82" }, 'subseparator': { 'left': "\u2b81", 'right': "\u2b83" },}
    function! LSPStatus() abort
        let l:errors = 0
        let l:warnings = 0
        for item in getqflist()
            if item["type"] == "E"
                let l:errors += 1
            else
                let l:warnings += 1
            endif
        endfor
        return l:errors + l:warnings == 0 ? "LSP: OK" : "LSP: E:" . l:errors . " " . "W:" . l:warnings
    endfunction
let g:indentLine_enabled = 0
let g:indentLine_char = '|'
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'
autocmd dein-events InsertEnter * call dein#autoload#_on_event("InsertEnter", ['deoplete.nvim', 'neosnippet'])
