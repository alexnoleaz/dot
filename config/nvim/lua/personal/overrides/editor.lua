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
      keys = {
        {
          "2<leader>ft",
          function()
            Snacks.terminal.get(nil, { cwd = LazyVim.root() })
          end,
          desc = "Terminal (Root Dir)",
        },
        {
          "2<c-/>",
          function()
            Snacks.terminal.get(nil, { cwd = LazyVim.root() })
          end,
          desc = "Terminal (Root Dir)",
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
      spec = {
        mode = { "n", "v" },
        { "<leader>O", group = "Obsidian" },
      },
    },
  },
}
