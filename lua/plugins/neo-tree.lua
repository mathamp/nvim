return {
	'nvim-neo-tree/neo-tree.nvim',
	branch = 'v3.x',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-tree/nvim-web-devicons',
		'MunifTanjim/nui.nvim',
	},
	config = function()
		vim.fn.sign_define('DiagnosticSignError', { text = ' ', texthl = 'DiagnosticSignError' })
		vim.fn.sign_define('DiagnosticSignWarn', { text = ' ', texthl = 'DiagnosticSignWarn' })
		vim.fn.sign_define('DiagnosticSignInfo', { text = ' ', texthl = 'DiagnosticSignInfo' })
		vim.fn.sign_define('DiagnosticSignHint', { text = '󰌵', texthl = 'DiagnosticSignHint' })

		require('neo-tree').setup({
			close_if_last_window = true,
			popup_border_style = 'rounded',
			enable_git_status = true,
			enable_diagnostics = true,

			filesystem = {
				filtered_items = {
					always_show = {
						'.gitignore',
					},
				},
			},
		})

		vim.keymap.set('n', '<leader>n', ':Neotree filesystem reveal left<CR>', {})

		vim.cmd('Neotree filesystem reveal left<CR>')
        vim.cmd('wincmd l')
	end,
}
