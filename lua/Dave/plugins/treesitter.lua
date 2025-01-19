return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },

  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "ada",
        "c",
        "cpp",
        "csv",
        "json",
        "lua",
        "vim",
        "rust",
        "sql",
        "python",
      },
    })
  end,

}
