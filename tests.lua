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

T.run()
