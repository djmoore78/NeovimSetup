return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k"] = actions.move_selection_previous,
            ["<C-j"] = actions.move_selection_next,
          },
        }
      },
    })
    telescope.load_extension("fzf")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>f ", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })
    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Recent Files" })
    keymap.set("n", "<leader>f/", "<cmd>Telescope live_grep<cr>", { desc = "Live Grep" })
    keymap.set("n", "<leader>fg", "<cmd>Telescope grep_string<cr>", { desc = "Grep string under cursor" })
    keymap.set('n', '<leader>f,', "<cmd>Telescope buffers<cr>", { desc = 'Open Buffers' })

  end,
}
