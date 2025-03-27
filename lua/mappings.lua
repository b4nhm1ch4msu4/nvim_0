local map = vim.keymap.set

-- Clear highlights
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })

-- Switch windows
map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

-- rebind j/k with gj/gk
map("n", "j", function()
  return vim.v.count == 0 and "gj" or "j"
end, { expr = true, noremap = true })
map("n", "k", function()
  return vim.v.count == 0 and "gk" or "k"
end, { expr = true, noremap = true })

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Useful edit keymaps
map("x", "<leader>p", [["_dP]], { desc = "Primeagen Copy" })
map("n", "<C-d>", "<C-d>zz", { desc = "Scroll plus zz" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll plus zz" })
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Line Up" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Line Down" })
map({ "n", "v" }, "<leader>sa", "ggVG", { desc = "Select All" })

-- Disable diagnostic
map(
  "n",
  "<leader>ud",
  ":lua vim.diagnostic.enable(not vim.diagnostic.is_enabled())<CR>",
  { desc = "Toggle Diagnostic", silent = true }
)

-- Format file
-- map("n", "<leader>fm", function()
--   require("conform").format { lsp_fallback = true }
-- end, { desc = "general format file" })

-- Comment
map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

-- nvimtree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })
