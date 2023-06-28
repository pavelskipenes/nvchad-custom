-- https://nvchad.com/docs/config/format_lint
local null_ls = require "null-ls"
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local sources = {
  formatting.stylua,
  formatting.rustfmt,
  null_ls.builtins.formatting.shfmt,
  diagnostics.actionlint,
  diagnostics.jsonlint,
  diagnostics.dotenv_linter,
}

null_ls.setup {
  sources = sources,
  -- lsp format on save
  on_attach = function()
    vim.api.nvim_create_autocmd("BufWritePost", {
      callback = function()
        vim.lsp.buf.format()
      end,
    })
  end,
}
