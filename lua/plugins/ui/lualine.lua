return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		options = {
			icons_enabled = true,
			theme = "onedark",
		},
		sections = {
			lualine_c = {
				{ "filename", path = 1 }, -- Show relative path
			},
			lualine_x = {
				"fileformat",
				"filetype",
			},
		},
	},
}
