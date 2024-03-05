return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			theme = "catppuccin",
		},
		sections = {
			lualine_x = {
				{ "diff" },
				{ "'󰙨 ' .. vim.g.xcodebuild_test_plan" },
				{
					"vim.g.xcodebuild_platform == 'macOS' and '  macOS' or ' ' .. vim.g.xcodebuild_device_name",
				},
				{ "' ' .. vim.g.xcodebuild_os" },
				{ "encoding" },
				{ "filetype", icon_only = true },
			},
		},
	},
}
