vim.g.mapleader = " "

local opts = { noremap = true, silent = true }
-- open buffers maneger with
vim.keymap.set("n", "<leader>b", ":lua require('buffer_manager.ui').toggle_quick_menu()<cr>", opts)

-- open fzf
vim.keymap.set("n", "<leader>f", ":FZF<cr>", opts)

-- widows nevigations
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

-- change buffers next.pre
vim.keymap.set("n", "C-n", ":bNext<cr>", opts)
vim.keymap.set("n", "C-p", ":bprevious<cr>", opts)

-- Move text up and down
vim.keymap.set("n", "<C-d>", "<Esc>:m .+1<CR>==gi<Esc>", opts)
vim.keymap.set("n", "<C-u>", "<Esc>:m .-2<CR>==gi<Esc>", opts)


-- clear highlights
vim.keymap.set("n", "<leader>l", ":nohl<cr>", opts)

-- copy paste
vim.keymap.set("n", "<leader>p", ':.!xclip -o -selection clipboard<CR>:echo "  " <CR>', opts)
vim.keymap.set("v", "<leader>y", ":!xclip -i -selection clipboard&& xclip -o -selection clipboard <cr>", opts)
