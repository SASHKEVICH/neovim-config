return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 40,
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				custom = {
					".DS_Store",
				},
				dotfiles = false,
			},
		})

		local api = require("nvim-tree.api")
		vim.keymap.set("n", "?", api.tree.toggle_help)
		vim.keymap.set("n", "<leader>ee", api.tree.toggle, { desc = "Open tree" })
	end,
}
