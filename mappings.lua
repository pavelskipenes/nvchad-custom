local M = {}
M.custom = {
  n = {
    ["<leader>dg"] = { "<cmd> Trouble <CR>", "Diagnostics" },
    ["<leader>z"] = { "<cmd> set wrap! <CR>", "Toggle word wrap" },
    ["<leader>q"] = { "<cmd>q<CR>", "quit" },
    ["<C-d>"] = { "<C-d>zz", "Jump down" },
    ["<C-p>"] = { "<C-p>zz", "Jump up" },
    ["j"] = { "jzz", "down" },
    ["k"] = { "kzz", "up" },
    ["<S>g"] = { "<S>gzz", "jump to buttom" },
  },
  i = {
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  },
}
return M
