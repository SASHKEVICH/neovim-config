return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>ee", ":Neotree toggle left<CR>", { desc = "Open explorer" })

		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = false,
					hide_dotfiles = false,
					hide_gitignored = false,
					hide_by_name = {
						".git",
						".nvim",
						"Build",
						"buildServer.json",
					},
					hide_by_pattern = {
						"*.xcodeproj",
						"*.xcworkspace",
					},
					never_show = {
						".DS_Store",
					},
				},
			},
		})
	end,
}
