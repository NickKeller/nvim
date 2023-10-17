local opt = vim.opt
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4

opt.fillchars = { eob = " " }
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"
opt.relativenumber = true
opt.number = true
opt.incsearch = true
opt.hlsearch = false
opt.scrolloff = 80

opt.splitright = true
opt.splitbelow = true

opt.cursorline = true


-- vim.api.nvim_create_autocmd("BufEnter", {
--     callback = function ()
--         vim.cmd("NvimTreeClose")
--     end
-- })
