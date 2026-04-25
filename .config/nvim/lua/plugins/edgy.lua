require("edgy").setup({
left = {
		{
			title = "Filesystem",
			ft = "neo-tree",
			filter = function(buf)
				return vim.b[buf].neo_tree_source == "filesystem"
			end,
			size = {
				height = 0.5
			},
			pinned = true,
			open = "Neotree position=top filesystem"
		},
		{
			title = "Buffers",
			ft = "neo-tree",
			filter = function(buf)
				return vim.b[buf].neo_tree_source == "buffers"
			end,
			size = {
				height = 0.5
			},
			pinned = true,
			open = function()
				vim.cmd("Neotree position=bottom buffers reveal")
			end,
			-- open = "Neotree position=bottom buffers"
		}
	},
})
