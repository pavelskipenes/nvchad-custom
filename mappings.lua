local M = {}
M.custom = {
  n = {
    ["<leader>dg"] = { "<cmd> Trouble <CR>", "Diagnostics" },
    ["<leader>z"] = { "<cmd> set wrap! <CR>", "Toggle word wrap" },
    ["<leader>q"] = { "<cmd>q<CR>", "quit" },
    ["<leader>K"] = { "<cmd> VisitLinkNearest <CR>", "open link closest to cursor" },
    ["<leader>tt"] = {
      function()
        require("base46").toggle_transparency()
      end,
      "toggle transparency",
    },
    ["<leader>ca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },
  },
  i = {
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  },
}
return M
