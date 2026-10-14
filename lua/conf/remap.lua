vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- vim.api.nvim_set_keymap("n", "<leader>tf", "<Plug>PlenaryTestFile", { noremap = false, silent = false })

vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit window" })

vim.keymap.set("n", "<leader>h", "<cmd>wincmd h<CR>", { desc = "Move to left window" })
vim.keymap.set("n", "<leader>l", "<cmd>wincmd l<CR>", { desc = "Move to right window" })

vim.api.nvim_create_user_command("Term", function()
  vim.cmd("botright vsplit")
  vim.cmd("terminal")
  vim.cmd("startinsert")
end, {})

vim.cmd("cabbrev term Term")

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>:q<CR>", {
  desc = "Close terminal",
})

vim.keymap.set("n", "<leader>v", "<cmd>botright vsplit<CR>", {
  desc = "Vertical split",
})

vim.keymap.set("n", "<leader>t", "<cmd>Term<CR>", {
  desc = "Open terminal",
})

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", {
  desc = "Exit terminal mode",
})

vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

-- Java imports

vim.keymap.set("n", "<C-.>", function()
  vim.lsp.buf.code_action()
end, { desc = "Code Action" })


-- vim.keymap.set("n", "<C-h>", "<C-w>h")
--vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Already mapped in plugin file
-- vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Toggle file explorer" })

vim.keymap.set("n", "<C-S-L>", "<Cmd>nohlsearch|diffupdate|normal! <C-L><CR>")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "=ap", "ma=ap'a")
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")

-- vim.keymap.set("n", "<leader>t", function()
--    vim.cmd [[ PlenaryBustedFile % ]]
-- end)

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- vim.keymap.set("n", "<M-h>", "<cmd>silent !tmux-sessionizer -s 0 --vsplit<CR>")
vim.keymap.set("n", "<M-H>", "<cmd>silent !tmux neww tmux-sessionizer -s 0<CR>")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })


--  "n", "<leader>ee",

--  "n", "<leader>ea",

--  "n", "<leader>ef",

--  "n", "<leader>el",

--   "n", "<leader>ca",

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

