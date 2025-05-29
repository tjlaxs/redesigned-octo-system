local Object = require('classic.classic')
local CommandObject = Object:extend()

local RunCommand = CommandObject:extend()
function RunCommand:new(command)
  self.command = command
end

function RunCommand:perform(runner)
  runner(self.command)
end

return {
  Command = CommandObject,

  RunCommand = RunCommand,
}
