local C = require('command')
local P = require('porcelain')

local cmds = {}
table.insert(cmds, P.init('test'))
table.insert(cmds, P.new_feature('testing_feature'))
table.insert(cmds, P.add('testfile'))
table.insert(cmds, P.commit('just adding bunch of stuff'))
table.insert(cmds, P.checkout('main'))
table.insert(cmds, P.merge_feature('testing_feature'))

for _, v in ipairs(cmds) do
  C.perform(v, print)
end
