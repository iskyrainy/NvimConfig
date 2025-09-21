local opt = vim.opt

-- line number
opt.relativenumber = true
opt.number = true

-- tab
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- not wrap
opt.wrap = false

-- cursor line
opt.cursorline = true

-- start mouse
opt.mouse:append("a")

-- system clipboard
opt.clipboard:append("unnamedplus")

-- new window position
opt.splitright = true
opt.splitbelow = true

-- search
opt.ignorecase = true
opt.smartcase = true

-- theme
opt.termguicolors = true
opt.signcolumn = "yes"
