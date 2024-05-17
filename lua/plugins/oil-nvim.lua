return {
	"stevearc/oil.nvim",
	enabled = true,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		delete_to_trash = true,
	},
	keys = {
		vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" }),
	},
}
