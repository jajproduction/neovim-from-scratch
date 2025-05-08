return {
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = true,
		priority = 1000,
		opts = function()
			return {
				transparent = true,
			}
		end,
	},
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000,
	},
	{
		"sainnhe/gruvbox-material",
		name = "gruvbox-material",
		event = "VeryLazy",
		config = function()
			vim.g.gruvbox_material_better_performance = 1
			-- Fonts
			vim.g.gruvbox_material_disable_italic_comment = 1
			vim.g.gruvbox_material_enable_italic = 0
			vim.g.gruvbox_material_enable_bold = 0
			vim.g.gruvbox_material_transparent_background = 1
			-- Themes
			vim.g.gruvbox_material_foreground = "mix"
			vim.g.gruvbox_material_background = "hard"
			vim.g.gruvbox_material_ui_contrast = "high" -- The contrast of line numbers, indent lines, etc.
			vim.g.gruvbox_material_float_style = "dim" -- Background of floating windows

			-- vim.cmd('colorscheme gruvbox-material')
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = true,
		opts = function()
			return { transparent_mode = true }
		end,
	},
	{ "lunarvim/darkplus.nvim", priority = 1000 },
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{ "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {} },
	{ "thesimonho/kanagawa-paper.nvim", lazy = false, priority = 1000, opts = {} },
	{ "rebelot/kanagawa.nvim", lazy = false, priority = 1000, opts = {} },
	{
		"webhooked/kanso.nvim",
		lazy = false,
		priority = 1000,
	},
}
