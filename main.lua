local M = {}
local P = require('porcelain')

local cmds = {}
table.insert(cmds, P.init('test'))
table.insert(cmds, P.new_feature('testing_feature'))
table.insert(cmds, P.add('testfile'))
table.insert(cmds, P.commit('just adding bunch of stuff'))
table.insert(cmds, P.checkout('main'))
table.insert(cmds, P.merge('feature/testing_feature'))

for _, v in ipairs(cmds) do
  v:perform(print)
end

return M
