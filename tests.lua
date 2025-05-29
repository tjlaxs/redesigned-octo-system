local T = require('potential-octo-rotary-phone/test')

---------------------------------------- porcelain.lua
local P = require('porcelain')

T.it('init - no directory', function()
  local init = P.init()
  return T.expect(init.command, 'git init')
end)

T.it('init - directory', function()
  local init = P.init('test')
  return T.expect(init.command, 'git init test')
end)

T.it('status', function()
  local status = P.status()
  return T.expect(status.command, 'git status')
end)

T.it('checkout', function()
  local checkout = P.checkout('test')
  if checkout ~= nil then
    return T.expect(checkout.command, 'git checkout test')
  end
  return T.assert('returned nil')
end)

T.it('new_branch', function()
  local new_branch = P.new_branch('test')
  if new_branch ~= nil then
    return T.expect(new_branch.command, 'git checkout -b test')
  end
  return T.assert('returned nil')
end)

T.it('new_feature', function()
  local new_feature = P.new_feature('test')
  if new_feature ~= nil then
    return T.expect(new_feature.command, 'git checkout -b feature/test')
  end
  return T.assert('returned nil')
end)

T.it('merge', function()
  local merge = P.merge('test')
  if merge ~= nil then
    return T.expect(merge.command, 'git merge test')
  end
  return T.assert('returned nil')
end)

T.it('merge_feature', function()
  local merge_feature = P.merge_feature('testing_feature')
  if merge_feature ~= nil then
    return T.expect(merge_feature.command, 'git merge feature/testing_feature')
  end
  return T.assert('returned nil')
end)

T.it('add', function()
  local add = P.add('test')
  if add ~= nil then
    return T.expect(add.command, 'git add test')
  end
  return T.assert('returned nil')
end)

T.it('add all', function()
  local add = P.add_all()
  if add ~= nil then
    return T.expect(add.command, 'git add .')
  end
  return T.assert('returned nil')
end)

T.it('commit', function()
  local commit = P.commit('test')
  if commit ~= nil then
    return T.expect(commit.command, 'git commit -m \'test\'')
  end
  return T.assert('returned nil')
end)

T.run()
