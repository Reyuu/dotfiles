return {
  "dzfrias/arena.nvim",
  event = "BufWinEnter",
  -- Calls `.setup()` automatically
  config = {
	max_items = nil,
	always_context = {"init.lua", "mod.rs"},
	ignore_current = true,
	devicons = true,
  },
}
