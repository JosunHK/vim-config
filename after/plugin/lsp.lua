require('lsp-zero').extend_cmp()
local lsp_zero = require('lsp-zero')

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
cmp.setup({
	mapping = cmp.mapping.preset.insert({
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-f>'] = cmp_action.luasnip_jump_forward(),
		['<C-b>'] = cmp_action.luasnip_jump_backward(),
	}),
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
})

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	lsp_zero.default_keymaps({buffer = bufnr})
end)

-- to learn how to use mason.nvim
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {},
	handlers = {
		function(server_name)
			require('lspconfig')[server_name].setup({})
		end,
		lua_ls = function()
			require("lspconfig").lua_ls.setup({
				settings = {
					Lua = {
						runtime = {
							version = "LuaJIT"
						},
						diagnostics = {
							globals = { "vim" }
						},
						workspace = {
							checkThirdParty = false,
							library = {
								vim.env.VIMRUNTIME,
								vim.env.VIMRUNTIME .. "/lua"
							}
						}
					}
				}

			})
		end
	},
})
