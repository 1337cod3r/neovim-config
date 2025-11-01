local colorscheme = "rose-pine"

local is_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not is_ok then
	vim.notify("colorscheme " .. colorscheme .. " not found!")
	return
end
require("rose-pine").setup({
	styles = {
		bold = true,
		italic = false,
		transparency = false,
    },

	highlight_groups = {
		Visual = {bg = "#474546", inherit = false}
	},

	palette = {
		main = {
			base = "#141012",
			surface = "#343233",
			overlay = "#141012",
			muted = "#B8B8A9",
			-- muted = "#A8A8A3",
			subtle = "#B8B8A9",
			-- subtle = "#A8A8A3",
			text = "#FFFFFF",
			iris = "#5B8C41",
			-- surface = "#1F1718",
			-- pine = "#30804D",
		}
	}
})

