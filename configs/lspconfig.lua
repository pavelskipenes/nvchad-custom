-- https://nvchad.com/docs/config/lsp
local global_lspconfig = require "plugins.configs.lspconfig"
local on_attach = global_lspconfig.on_attach
local capabilities = global_lspconfig.capabilities

---@diagnostic disable-next-line: different-requires
local lspconfig = require "lspconfig"
local servers = {
  "bashls",
  "marksman",
  "rome"
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    ["rust-analyzer"] = {
      -- https://github.com/rust-lang/rust-analyzer/blob/master/docs/user/generated_config.adoc
      cargo = {
        features = "all",
      },
      check = {
        command = "clippy",
      },
    },
  },
}
