return {
	"folke/snacks.nvim",
	opts = {
		picker = {
			prompt = " > ",
			layout = {
				preset = "telescope",
				preview = false,
				layout = {
					width = 0.7,
					height = 0.7,
				},
			},
		},
		lazygit = {},
	},
	keys = {
		-- find
		{
			"<leader>fb",
			function()
				Snacks.picker.buffers()
			end,
			desc = "Buffers",
		},
		{
			"<leader>fc",
			function()
				Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
			end,
			desc = "Find Config File",
		},
		{
			"<leader>ff",
			function()
				Snacks.picker.files()
			end,
			desc = "Find Files",
		},
		{
			"<leader>gL",
			function()
				Snacks.picker.git_log_line()
			end,
			desc = "Git Log Line",
		},
		{
			"<leader>h",
			function()
				Snacks.picker.help()
			end,
			desc = "Help",
		},
		-- gh
		{
			"<leader>gi",
			function()
				Snacks.picker.gh_issue({ state = "all" })
			end,
			desc = "GitHub Issues (all)",
		},
		{
			"<leader>gp",
			function()
				Snacks.picker.gh_pr({ state = "all" })
			end,
			desc = "GitHub Pull Requests (all)",
		},
		{
			"<leader>lg",
			function()
				Snacks.lazygit.open()
			end,
			desc = "Lazygit",
		},
		-- Grep
		{
			"<leader>fg",
			function()
				Snacks.picker.grep()
			end,
			desc = "Grep",
		},
		{
			"<leader>fw",
			function()
				Snacks.picker.grep_word()
			end,
			desc = "Visual selection or word",
			mode = { "n", "x" },
		},
		{
			"<leader>uC",
			function()
				Snacks.picker.colorschemes({
					finder = "vim_colorschemes",
					format = "text",
					preview = "colorscheme",
					preset = "vertical",
					confirm = function(picker, item)
						picker:close()
						if item then
							picker.preview.state.colorscheme = nil
							vim.schedule(function()
								vim.cmd("colorscheme " .. item.text)
							end)
						end
					end,
				})
			end,
			desc = "Colorschemes",
		},
	},
}
