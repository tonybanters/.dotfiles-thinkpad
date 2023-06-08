vim.g.mapleader = " "

local remap = vim.keymap

--------------------
-- General Remaps
--------------------

-- clear search highlights
remap.set("n", "<leader>nh", ":nohl<CR>")

-- 10 years of sublime text
remap.set({"n", "v"}, "dd", '"_dd')
remap.set({"n", "v"}, "diw", '"_dw')
remap.set({"n", "v"}, "dw", '"_dw')

-- Source Files:
remap.set("n", "<leader><leader>", ":so<CR>")

-- Alt Up/Down in vscode
remap.set("v", "J", ":m '>+1<CR>gv=gv")  
remap.set("v", "K", ":m '<-2<CR>gv=gv")

-- window management
remap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
remap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
remap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
remap.set("n", "<leader>sk", ":close<CR>") -- close current split window

remap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
remap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
remap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
remap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- plugin keymaps

-- vim maximizer
remap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- toggle nvim-tree
-- remap.set("n", "<leader>cd", ":NvimTreeToggle<CR>") 
-- need this bind if nvim-tree is disbaled
remap.set("n", "<leader>cd", vim.cmd.Ex) 

