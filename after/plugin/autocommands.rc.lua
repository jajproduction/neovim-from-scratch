vim.cmd [[

  augroup _markdown
    autocmd!
    autocmd vimenter *.md ZenMode
    autocmd FileType markdown setlocal nocursorline
    autocmd FileType markdown setlocal linebreak
    autocmd FileType markdown setlocal wrap
    autocmd FileType markdown setlocal nonumber
  augroup end

  augroup _templates
    autocmd!
    autocmd BufNewFile *.html 0r ~/.config/nvim/templates/html.skel
    autocmd BufNewFile *.php 0r ~/.config/nvim/templates/html.skel
    autocmd BufNewFile *.css 0r ~/.config/nvim/templates/css.skel
  augroup end

]]
