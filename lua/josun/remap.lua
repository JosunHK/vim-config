vim.g.mapleader = " "
vim.keymap.set("n", "<leader><leader>", '<cmd>NvimTreeToggle<cr>')

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")

vim.keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>")
vim.keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>")
vim.keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- window change
vim.keymap.set({ "n" }, "<leader>wh", "<C-w>h")
vim.keymap.set({ "n" }, "<leader>wj", "<C-w>j")
vim.keymap.set({ "n" }, "<leader>wk", "<C-w>k")
vim.keymap.set({ "n" }, "<leader>wl", "<C-w>l")

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>sp", [["+p]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
--vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- easy log reload
vim.keymap.set("n", "<leader>fr", "<cmd>1,$d <bar> w!<cr>")
vim.keymap.set("n", "<leader>lr", "<cmd>e!<cr>")


vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

--OK now this is the greatest remap ever
vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

--vim.keymap.set("n", "<leader><leader>", function()
--    vim.cmd("so")
--end)
