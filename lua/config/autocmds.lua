-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- Disable the concealing in some file formats
-- The default conceallevel is 3 in LazyVim
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc", "markdown" },
  callback = function()
    vim.opt.conceallevel = 0
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown" },
  callback = function()
    vim.opt.wrap = true
    vim.opt.linebreak = true
    vim.opt.cursorline = false
    vim.opt.number = false
    vim.opt.relativenumber = false
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "mdx" },
  callback = function()
    vim.opt.wrap = true
    vim.opt.linebreak = true
    vim.opt.cursorline = false
    vim.opt.number = false
    vim.opt.relativenumber = false
  end,
})
