return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"echasnovski/mini.nvim",
	},
	opts = {
		options = {
			icons_enabled = false,
			theme = "auto",
		},
		sections = {
			lualine_c = {
				{ "filename", path = 1 }, -- Show relative path
			},
			lualine_x = {},
			lualine_y = {},
			lualine_z = { "lsp_status" },
		},
	},
}
