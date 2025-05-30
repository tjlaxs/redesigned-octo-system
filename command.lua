local M = {}

M.RunCommand = function(command)
  return {
    command = command
  }
end

M.perform = function(cmd, runner)
  return runner(cmd.command)
end

return M
