local T = require('potential-octo-rotary-phone/test')

---------------------------------------- main.lua
local Main = require('main')

T.it('finds hello', function()
  return T.expect(Main.hello, 'hello world')
end)

T.run()
