if vim.loader then
	vim.loader.enable()
end

_G.dd = function(...)
	require("util.debug").dump(...)
end
vim.print = _G.dd

require("config.lazy")

-- Set file type to php.html for *.php files on BufRead
-- vim.api.nvim_exec(
-- 	[[
--   autocmd BufRead *.php set ft=php.html
-- ]],
-- 	false
-- )

-- Set file type to php.html for *.php files on BufNewFile
-- vim.api.nvim_exec(
-- 	[[
--   autocmd BufNewFile *.php set ft=php.html
-- ]],
-- 	false
-- )

require("lspconfig").intelephense.setup({})
