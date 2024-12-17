return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
		config = function()
			require("mason").setup()

			require("mason-lspconfig").setup({
				automatic_installation = true, -- Automatically install LSP servers
				ensure_installed = {
					"cssls", -- CSS LSP
					"eslint", -- ESLint LSP
					"html", -- HTML LSP
					"jsonls", -- JSON LSP
					"pyright", -- Python LSP
					"tailwindcss", -- Tailwind CSS LSP
					"gopls", --golang
					["rust_analyzer"] = function() end,
				},
			})

			require("mason-tool-installer").setup({
				ensure_installed = {
					"prettier", -- Code formatter for JS, HTML, CSS, etc.
					"stylua", -- Lua formatter
					"isort", -- Python import formatter
					"black", -- Python code formatter
					"pylint", -- Python linter
					"eslint_d", -- ESLint daemon for linting JavaScript/TypeScript
				},
			})
		end,
	},
}
