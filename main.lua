local M = {}
local P = require('porcelain')

M.hello = 'hello world'

local status = P.status()
status:perform(os.execute)

return M
