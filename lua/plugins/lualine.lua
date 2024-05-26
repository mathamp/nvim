return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		-- setup colors
		local colors = {
			blue = '#80a0ff',
			cyan = '#79dac8',
			black = '#080808',
			white = '#c6c6c6',
			red = '#ff5189',
			violet = '#d183e8',
			grey = '#303030',
			ayu_blue = '#59c2ff',
			ayu_green = '#aad94c',
			ayu_orange = '#e6b450',
			ayu_red = '#f07178',
		}

		local bubbles_theme = {
			normal = {
				a = { fg = colors.black, bg = colors.ayu_blue },
				b = { fg = colors.white, bg = colors.grey },
				c = { fg = colors.black },
			},

			insert = { a = { fg = colors.black, bg = colors.ayu_green } },
			visual = { a = { fg = colors.black, bg = colors.ayu_orange } },
			replace = { a = { fg = colors.black, bg = colors.ayu_red } },

			inactive = {
				a = { fg = colors.white, bg = colors.black },
				b = { fg = colors.white, bg = colors.black },
				c = { fg = colors.white },
			},
		}

		-- setup plugin
		require('lualine').setup({
			options = {
				icons_enabled = true,
				theme = bubbles_theme,
				component_separators = '',
				section_separators = { left = '', right = '' },
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
			},
			sections = {
				lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
				lualine_b = { 'branch', 'filename' },
				lualine_c = { 'diff', 'diagnostics' },
				lualine_x = {},
				lualine_y = { 'filetype', 'progress' },
				lualine_z = {
					{ 'location', separator = { right = '' }, left_padding = 2 },
				},
			},
			inactive_sections = {
				lualine_a = { 'filename' },
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = { 'location' },
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {},
		})
	end,
}
