vim.g.mapleader = " "
local keymap = vim.api.nvim_set_keymap

local opts= {noremap=true, silent=true}
-- open buffers maneger with 
keymap("n", "<leader>b", ":lua require('buffer_manager.ui').toggle_quick_menu()<cr>" ,opts)

-- open fzf 
keymap("n", "<leader>f", ":FZF<cr>", opts)

-- widows nevigations
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- change buffers next.pre
keymap("n", "C-n", ":bNext<cr>", opts)
keymap("n", "C-p", ":bprevious<cr>", opts)

-- Move text up and down
keymap("n", "<C-j>", "<Esc>:m .+1<CR>==gi<Esc>", opts)
keymap("n", "<C-k>", "<Esc>:m .-2<CR>==gi<Esc>", opts)


-- clear highlights 
keymap("n", "<leader>l", ":nohl<cr>", opts)

-- copy paste 
keymap("n", "<leader>p", ":.!xclip -o -selection clipboard<CR>:echo '  ' <CR>", opts)
keymap("v", "<leader>y", ":!xclip -i -selection clipboard&& xclip -o -selection clipboard <cr>", opts)

