return {
	"saghen/blink.cmp",

	version = '1.*',
	opts = {
		keymap = { 
			preset = 'enter',
            ['<Tab>'] = { 'accept', 'fallback'  },
			['<C-e>'] = false,
			['<C-k>'] = false
		},

		appearance = { nerd_font_variant = 'normal' },

		completion = { documentation = { auto_show = false } },

		sources = {
			default = { 'lsp', 'path', 'buffer' },
		},

		fuzzy = { implementation = "prefer_rust_with_warning" }
	},
	opts_extend = { "sources.default" }
}
