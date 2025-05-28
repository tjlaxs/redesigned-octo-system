local T = require('potential-octo-rotary-phone/test')

---------------------------------------- main.lua
local Main = require('main')

T.it('finds hello', function()
  return T.expect(Main.hello, 'hello world')
end)

---------------------------------------- porcelain.lua
local P = require('porcelain')

T.it('status', function()
  local status = P.status()
  return T.expect(status.command, 'git status')
end)

T.it('init - no directory', function()
  local init = P.init()
  return T.expect(init.command, 'git init')
end)

T.it('init - directory', function()
  local init = P.init('test')
  return T.expect(init.command, 'git init test')
end)

T.it('checkout', function()
  local checkout = P.checkout('test')
  if checkout ~= nil then
    return T.expect(checkout.command, 'git checkout test')
  end
  -- Failing for nil
  -- TODO: Need to do T.assert... fix and update porp
  return T.expect('true', 'false')
end)

T.it('commit -m', function()
  local commit = P.commit('test')
  if commit ~= nil then
    return T.expect(commit.command, 'git commit -m \'test\'')
  end
  -- Failing for nil
  -- TODO: Need to do T.assert... fix and update porp
  return T.expect('true', 'false')
end)

T.run()
