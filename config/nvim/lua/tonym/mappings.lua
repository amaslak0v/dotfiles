vim.g.mapleader = " "

local keymap = vim.keymap

-- Open Netr
keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Moving lines by Visual mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Saving from Vim Clipboard to General
keymap.set({"n", "v"}, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

-- Increase Number and Decrease 2
keymap.set("n", "<leader>n+", "<C-a>")
keymap.set("n", "<leader>n-", "<C-x>")

keymap.set("n", "<leader>_", "<C-w>v") -- split horisontally
keymap.set("n", "<leader>-", "<C-w>s") -- split vertically
keymap.set("n", "<leader>=", "<C-w>=") -- equalize split
keymap.set("n", "<leader>sx", ":close<CR>") -- close split
keymap.set("n", "<leader>sz", ":MaximizerToogle<CR>") -- Maximizer plugin

-- Save file
-- keymap.set("n", "<leader>w", "<cmd>w<cr>", { noremap = true, desc = "Save window" })

-- Unmap mappings used by tmux plugin
-- TODO(vintharas): There's likely a better way to do this.
-- keymap.del("n", "<C-h>")
-- keymap.del("n", "<C-j>")
-- keymap.del("n", "<C-k>")
-- keymap.del("n", "<C-l>")
keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>")
keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>")
keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>")
