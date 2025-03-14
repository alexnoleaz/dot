---@class personal.util.shell
local M = {}

function M.configure_windows()
  if not LazyVim.is_win() then
    return
  end

  local home = vim.fn.getenv("HOME")
  local program_files = vim.fn.getenv("PROGRAMFILES")

  local paths = {
    [home] = home .. "\\scoop\\apps\\git\\current\\usr\\bin\\bash.exe",
    [program_files] = program_files .. "\\Git\\usr\\bin\\bash.exe",
  }

  for key, path in pairs(paths) do
    if string.find(vim.o.shell, key, 1, true) then
      M.use(path)
      vim.o.shellcmdflag = "-s -c"
      return
    end
  end

  M.use("pwsh")
end

---@param shell string
function M.use(shell)
  LazyVim.terminal.setup(shell)
end

return M
