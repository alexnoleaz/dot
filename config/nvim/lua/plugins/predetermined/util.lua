return {
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    event = "VeryLazy",
    opts = {
      workspaces = {
        {
          name = "personal",
          path = "~/vaults/personal",
        },
      },
      notes_subdir = "_notes",
      daily_notes = {
        folder = "Daily",
      },
      templates = {
        folder = "_templates",
      },
      attachments = {
        img_folder = "_attachments",
      },
      picker = {
        name = "telescope.nvim",
      },
      note_id_func = function(title)
        local suffix = title and title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
          or string.char(math.random(65, 90), math.random(65, 90), math.random(65, 90), math.random(65, 90))
        return tostring(os.time()) .. "-" .. suffix
      end,
    },
    keys = {
      { "<leader>Oo", "<cmd>ObsidianOpen<cr>", desc = "Open Obsidian" },
      { "<leader>On", "<cmd>ObsidianNew<cr>", desc = "New Note" },
      { "<leader>ON", "<cmd>ObsidianNewFromTemplate<cr>", desc = "New Note from Template" },
      { "<leader>Of", "<cmd>ObsidianFollowLink<cr>", desc = "Follow Link" },
      { "<leader>Ot", "<cmd>ObsidianToday<cr>", desc = "New Today Note" },
      { "<leader>OT", "<cmd>ObsidianTomorrow<cr>", desc = "New | Open Tomorrow Note" },
      { "<leader>Oy", "<cmd>ObsidianYesterday<cr>", desc = "New | Open Yesterday Note" },
      {
        "<leader>Ow",
        function()
          local workspaces = require("obsidian").get_client().opts.workspaces
          if not workspaces then
            return {}
          end

          local names = {}
          for _, workspace in ipairs(workspaces) do
            table.insert(names, workspace.name)
          end

          ---@type snacks.picker.ui_select
          Snacks.picker.select(names, {
            prompt = "Workspaces",
          }, function(value)
            if value then
              vim.cmd("ObsidianWorkspace " .. value)
            end
          end)
        end,
        desc = "Change Workspace",
      },
      { "<leader>Op", "<cmd>ObsidianPasteImg<cr>", desc = "Paste Image" },
      { "<leader>Oc", "<cmd>ObsidianToggleCheckbox<cr>", desc = "Toggle Checkbox" },
      { "<leader>OC", "<cmd>ObsidianTOC<cr>", desc = "Table of Contents" },
      { mode = "v", "<leader>Ol", "<cmd>ObsidianLink<cr>", desc = "Link to Note" },
      { mode = "v", "<leader>OL", "<cmd>ObsidianLinkNew<cr>", desc = "Link to New Note" },
      { mode = "v", "<leader>Oe", "<cmd>ObsidianExtractNote<cr>", desc = "Extract to Link (New Note)" },
    },
  },
}
