-- https://nvchad.com/docs/config/format_lint
-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
local null_ls = require "null-ls"
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local sources = {
  diagnostics.actionlint,
  diagnostics.dotenv_linter,
  diagnostics.markdownlint,
  formatting.markdownlint,
  formatting.rome,
  formatting.rustfmt,
  formatting.shfmt,
  formatting.stylua,
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
