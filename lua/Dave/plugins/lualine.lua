return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count

    local custom_theme = require'lualine.themes.material'

    lualine.setup({
      options = { theme = custom_theme },
    })
  end,
}
