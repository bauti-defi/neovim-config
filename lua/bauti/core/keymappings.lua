vim.g.mapleader = " "

local keymap = vim.keymap
keymap.set("n", "<leader>pv", vim.cmd.Ex)
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally

keymap.set("n", "<leader>txa", ":tabonly<CR>", { silent = true }) -- close all other tabs
keymap.set("n", "<leader>to", ":tabnew<CR>", { silent = true }) -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>", { silent = true }) -- close current tab
keymap.set("n", "<leader><Right>", ":tabn<CR>", { silent = true }) --  go to next tab
keymap.set("n", "<leader><Left>", ":tabp<CR>", { silent = true }) --  go to previous tab
keymap.set("n", "<leader>h", "<C-w>h", { silent = true }) -- go to left window
keymap.set("n", "<leader>j", "<C-w>j", { silent = true }) -- go to bottom window
keymap.set("n", "<leader>k", "<C-w>k", { silent = true }) -- go to top window
keymap.set("n", "<leader>l", "<C-w>l", { silent = true }) -- go to right window

-- nvim-tree
keymap.set("n", "<leader>b", ":NvimTreeToggle<CR>", { silent = true })
keymap.set("n", "<leader>bc", ":NvimTreeCollapse<CR>", { silent = true })

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>jk", "i")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- buftabline
keymap.set("n", "<leader>[", "<cmd>BufPrev<CR>")
keymap.set("n", "<leader>]", "<cmd>BufNext<CR>")

keymap.set("n", "<leader><leader>s", "<cmd>lua vim.lsp.buf.format()<CR><cmd>w <CR>") -- save file with Ctrl+s
keymap.set("n", "<C-a>", "<cmd> %y+<CR>") -- copy all text to clipboard
keymap.set("n", "<C-x>", "<cmd> %d<CR>") -- cut all text to clipboard

keymap.set("n", "<leader>q", "<cmd>bdelete<CR>") -- quit current window
keymap.set("n", "<leader>Q", "<cmd>qa<CR>") -- quit all windows
keymap.set("n", "<leader>QA", "<cmd>q!<CR>") -- force quite current window
