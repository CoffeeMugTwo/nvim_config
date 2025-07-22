-- 1. Define a custom highlight group for the active window
vim.api.nvim_set_hl(0, "ActiveWindow", { bg = "#221F22" })

-- (Optional) If you want the sign column to match
vim.api.nvim_set_hl(0, "ActiveWindowSignColumn", { bg = "#221F22" })

-- 2. Create an augroup so we can clear and redefine our autocommands cleanly
local group = vim.api.nvim_create_augroup("WindowHighlight", { clear = true })

-- 3. When entering a window, set its 'winhighlight' to use our group
vim.api.nvim_create_autocmd({ "WinEnter", "BufWinEnter" }, {
	group = group,
	callback = function()
		vim.opt_local.winhighlight = "Normal:ActiveWindow,SignColumn:ActiveWindowSignColumn"
	end,
})

-- 4. When leaving a window, clear the override so it goes back to normal
vim.api.nvim_create_autocmd("WinLeave", {
	group = group,
	callback = function()
		vim.opt_local.winhighlight = nil
	end,
})
