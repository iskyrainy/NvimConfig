vim.g.mapleader = ","
vim.g.maplocalleader = ","

local keymap = vim.keymap

-- ---------- insert mode ---------- ---
keymap.set("i", "jk", "<ESC>")

-- ---------- visual mode ---------- ---
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Yank to system clipboard" })

-- ---------- normal mode ---------- ---
-- window
-- horizontally build a window
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })

-- vertically build a window
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })

-- close this window
vim.keymap.set("n", "<leader>sc", "<C-w>c", { desc = "Close current window" })

-- close all of other windows
vim.keymap.set("n", "<leader>so", "<C-w>o", { desc = "Close other windows" })


-- switch window by: <leader> + h/j/k/l
vim.keymap.set("n", "<leader>h", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<leader>l", "<C-w>l", { desc = "Move to right window" })
vim.keymap.set("n", "<leader>j", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<leader>k", "<C-w>k", { desc = "Move to top window" })

-- adjust window size by: Alt + h/j/k/l
vim.keymap.set("n", "<A-l>", "<C-w><", { desc = "Decrease width" })
vim.keymap.set("n", "<A-h>", "<C-w>>", { desc = "Increase width" })
vim.keymap.set("n", "<A-j>", "<C-w>-", { desc = "Decrease height" })
vim.keymap.set("n", "<A-k>", "<C-w>+", { desc = "Increase height" })

-- split all windows
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Equalize window sizes" })


-- dispose highlighting
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- switch buffer
keymap.set("n", "<leader>q", ":bd<CR>", { desc = "Close current buffer" })
keymap.set("n", "<F7>", ":bprevious<CR>")
keymap.set("n", "<F8>", ":bnext<CR>")

-- system clipboard
vim.keymap.set("n", "<leader>p", '"+p', { desc = "Paste from system clipboard" })
vim.keymap.set("n", "<leader>y", '"+yy', { desc = "Yank line to system clipboard" })

-- ---------- plugins ---------- ---
-- nvim-tree
vim.keymap.set("n", "<F4>", "<cmd>NvimTreeToggle<CR>", { noremap = true, silent = true })

-- treesitter
vim.keymap.set("n", "<leader>f", "gg=G", { desc = "Format code" })

-- lsp
vim.keymap.set("n", "ga", vim.diagnostic.open_float)
vim.keymap.set("n", "gk", vim.diagnostic.goto_prev)
vim.keymap.set("n", "gj", vim.diagnostic.goto_next)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
vim.keymap.set("n", "gt", vim.lsp.buf.type_definition)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
vim.keymap.set("n", "gr", vim.lsp.buf.references)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>fm", function()
  vim.lsp.buf.format({ async = true })
end)

-- autocmd
-- auto reload rust-analyzer when Cargo.toml is changed
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "Cargo.toml",
  callback = function()
    vim.lsp.buf.execute_command({ command = "rust-analyzer.reloadWorkspace" })
  end,
})

-- auto save file changes
vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
  pattern = "*",
  callback = function()
    if vim.bo.modified then
      vim.cmd("silent! write")
    end
  end,
})
