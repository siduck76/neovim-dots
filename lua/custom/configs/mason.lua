local M = {}

-- LSPs, Linters, Debuggers and Formatters
M.opts = {
  ensure_installed = {
    "bash-language-server",
    "beautysh",
    "black",
    "clangd",
    "clang-format",
    "debugpy",
    "delve",
    "dockerfile-language-server",
    "golangci-lint",
    "gopls",
    "html-lsp",
    "stylua",
    "terraform-ls",
    "tflint",
    "typescript-language-server",
    "lua-language-server",
    "markdownlint",
    "marksman",
    "prettier",
    "pyright",
    "rubocop",
    "vim-language-server",
    "yamlfmt",
    "yaml-language-server",
  },
}

return M
