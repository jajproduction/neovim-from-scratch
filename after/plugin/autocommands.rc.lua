vim.cmd [[

  augroup _markdown
    autocmd!
    autocmd vimenter *.md ZenMode
    autocmd FileType markdown setlocal linebreak
    autocmd FileType markdown setlocal wrap
    autocmd FileType markdown setlocal nonumber
  augroup end

]]
