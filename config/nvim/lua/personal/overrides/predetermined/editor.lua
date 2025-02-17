return {
  {
    "snacks.nvim",
    opts = {
      picker = {
        layout = {
          preview = true,
          preset = "vscode",
        },
      },
      terminal = {
        win = {
          style = "minimal",
        },
      },
    },
  },
  {
    "gitsigns.nvim",
    opts = {
      current_line_blame = true,
      current_line_blame_opts = { delay = 300 },
    },
  },
  {

    "which-key.nvim",
    opts = {
      preset = "classic",
    },
  },
}
