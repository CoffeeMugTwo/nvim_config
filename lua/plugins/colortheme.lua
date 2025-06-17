--[[
return {
	"shaunsingh/nord.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		-- Example config in lua
       	vim.g.nord_contrast = true
		vim.g.nord_borders = false	
		vim.g.nord_disable_background = false
		vim.g.nord_italic = false
		vim.g.nord_uniform_diff_background = true
		vim.g.nord_bold = false

		-- Load the colorscheme
		require('nord').set()
	end

}
--]]

--[[
return {
    "tanvirtin/monokai.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd.colorscheme("monokai")
    end,
}
--]]

return {
    "loctvl842/monokai-pro.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("monokai-pro").setup({
            transparent_background = false,
            terminal_colors = true,
            devicons = true,
            styles = {
                comment = { italic = true },
                keyword = { italic = true },
                type = { italic = true },
                storageclass = { italic = true },
                structure = { italic = true },
                parameter = { italic = true },
                annotation = { italic = true },
                tag_attribute = { italic = true },
            },
            filter = "pro", -- options: "classic", "octagon", "pro", "machine", "ristretto", "spectrum"
        })

        vim.cmd.colorscheme("monokai-pro")
    end,
}
