return {
  {
    "b0o/incline.nvim",
    opts = {
      window = { margin = { vertical = 0, horizontal = 0 } },
      hide = {
        cursorline = true,
      },
      render = function(props)
        local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
        filename = filename ~= "" and filename or "[No Name]"

        local icon, color = require("nvim-web-devicons").get_icon_color(filename)
        return { { icon, guifg = color }, { " " }, { filename } }
      end,
    },
  },
  {
    "petertriho/nvim-scrollbar",
    opts = {
      handlers = { cursor = false, gitsigns = false, handle = false },
      excluded_filetypes = { "prompt", "noice", "notify" },
    },
  },
}
