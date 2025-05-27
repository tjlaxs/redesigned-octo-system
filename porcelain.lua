local M = {}

M.init = function()
  return os.execute('git init')
end

M.checkout = function(branch)
  if type(branch) ~= 'string' then
    return -1
  end
  return os.execute('git checkout ' .. branch)
end

M.new_branch = function(branch)
  if type(branch) ~= 'string' then
    return -1
  end
  return os.execute('git checkout -b ' .. branch)
end

M.new_feature = function(feature)
  if type(feature) ~= 'string' then
    return -1
  end
  return os.execute('git checkout -b feature/' .. feature)
end

M.merge = function(branch)
  if type(branch) ~= 'string' then
    return -1
  end
  return os.execute('git merge ' .. branch)
end

M.add = function(file)
  if type(file) ~= 'string' then
    return -1
  end
  return os.execute('git add ' .. file)
end

M.add_all = function()
  return os.execute('git add .')
end

M.commit = function(message)
  if type(message) ~= 'string' then
    return -1
  end
  return os.execute('git commit -m \'' .. message .. '\'')
end

return M
