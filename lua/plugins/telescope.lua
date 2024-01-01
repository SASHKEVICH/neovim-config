return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>fG", builtin.git_files, {})
			vim.keymap.set("n", "<leader>fb", builtin.buffers, {})

			local telescope = require("telescope")
			telescope.setup({
				defaults = {
					prompt_prefix = "❯ ",
					selection_caret = "❯ ",
					file_ignore_patterns = {
						"node_modules/.*",
						"yarn.lock",
						"package-lock.json",
						"lazy-lock.json",
						"init.sql",
						"target/.*",
						".git/.*",
						"Build",
						".nvim",
					},
				},
			})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})

			require("telescope").load_extension("ui-select")
		end,
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
		enabled = vim.fn.executable("make") == 1,
		config = function()
			require("telescope").load_extension("fzf")
		end,
	},
}