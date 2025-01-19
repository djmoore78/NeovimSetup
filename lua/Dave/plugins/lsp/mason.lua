return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")

      mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "awk_ls",
        "bashls",
        "clangd",
        "cmake",
        "jsonls",
        "lua_ls",
        "glsl_analyzer",
        "rust_analyzer",
        "pyright",
        "sqlls",
      },
    })
  end,
}
