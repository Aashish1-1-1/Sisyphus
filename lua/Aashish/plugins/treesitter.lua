local M = {
	"nvim-treesitter/nvim-treesitter",
	build = "TSUpdate",
	lazy = false, -- Force the plugin to load at startup
}

function M.config()
	require("nvim-treesitter.configs").setup({
		ensure_installed = { "c", "lua", "rust", "bash" },
		sync_install = true,
		auto_install = true,
		highlight = { enable = true },
		indent = { enable = true },
	})
end

return M
