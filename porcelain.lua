local Command = require('command')
local RunCommand = Command.RunCommand
local M = {}

M.init = function(branch)
  if type(branch) ~= 'string' then
    return RunCommand('git init')
  else
    return RunCommand('git init' .. branch)
  end
end

M.status = function()
  return RunCommand('git status')
end

M.checkout = function(branch)
  if type(branch) ~= 'string' then
    return nil
  end
  return RunCommand('git checkout ' .. branch)
end

M.new_branch = function(branch)
  if type(branch) ~= 'string' then
    return nil
  end
  return RunCommand('git checkout -b ' .. branch)
end

M.new_feature = function(feature)
  if type(feature) ~= 'string' then
    return nil
  end
  return RunCommand('git checkout -b feature/' .. feature)
end

M.merge = function(branch)
  if type(branch) ~= 'string' then
    return nil
  end
  return RunCommand('git merge ' .. branch)
end

M.add = function(file)
  if type(file) ~= 'string' then
    return nil
  end
  return RunCommand('git add ' .. file)
end

M.add_all = function()
  return RunCommand('git add .')
end

M.commit = function(message)
  if type(message) ~= 'string' then
    return nil
  end
  return RunCommand('git commit -m \'' .. message .. '\'')
end

return M
