-- Mason setup
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "gopls",
    "ts_ls",
    "lua_ls",
  },
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
local cmp_ok, cmp_lsp = pcall(require, "cmp_nvim_lsp")
if cmp_ok then
  capabilities = cmp_lsp.default_capabilities()
end

vim.lsp.config.gopls = {
  name = "gopls",
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_markers = { "go.work", "go.mod", ".git" },
  capabilities = capabilities,

  settings = {
    gopls = {
      gofumpt = true,
      staticcheck = true,
    }
  },
}

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "go", "gomod", "gowork", "gotmpl" },
  callback = function()
    vim.lsp.start(vim.lsp.config.gopls)
  end,
})

vim.lsp.config.ts_ls = {
  name = "ts_ls",
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = {
    "typescript", "typescriptreact", "typescript.tsx",
    "javascript", "javascriptreact", "javascript.jsx",
  },
  root_markers = {
    "tsconfig.json",
    "package.json",
    "jsconfig.json",
    ".git",
  },
  capabilities = capabilities,

  settings = {
    typescript = {
      preferences = {
        importModuleSpecifier = "relative",
      },
    },
    javascript = {
      preferences = {
        importModuleSpecifier = "relative",
      },
    },
  },
}

vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "typescript", "typescriptreact", "typescript.tsx",
    "javascript", "javascriptreact", "javascript.jsx",
  },
  callback = function()
    vim.lsp.start(vim.lsp.config.ts_ls)
  end,
})
