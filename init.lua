require("mo.core")

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require("lazy").setup({
	require("mo.plugins.neotree"),
	require("mo.plugins.colortheme"),
	require("mo.plugins.bufferline"),
	require("mo.plugins.lualine"),
	require("mo.plugins.treesitter"),
	require("mo.plugins.telescope"),
	require("mo.plugins.lsp"),
	require("mo.plugins.autocompletion"),
	require("mo.plugins.none-ls"),
	require("mo.plugins.gitsigns"),
	require("mo.plugins.alpha"),
	require("mo.plugins.indent-blankline"),
	require("mo.plugins.misc"),
})

-- vim.cmd.colorscheme "catppuccin"
-- ignore perl and ruby dependencies for nvim
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

-- require("mo.keymaps")
-- require("mo.plugins")
-- require("mo.autocommands")
-- require("mo.colorscheme")
-- require("mo.cmp")
-- require("mo.telescope")
-- require("mo.treesitter")
-- require("mo.autopairs")
-- require("mo.comment")
-- require("mo.lualine")
-- require("mo.colorizer")
-- require("mo.whichkey")
-- require("mo.gitsigns")
-- require("mo.nvim-tree")
-- require("mo.bufferline")
-- require("mo.toggleterm")
-- require("mo.project")
-- require("mo.impatient")
-- require("mo.illuminate")
-- require("mo.indentline")
-- require("mo.alpha")
-- require("mo.lsp")
