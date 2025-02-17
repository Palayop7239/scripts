return function()
local LogService = game:GetService("LogService") 
    local function onMessageOut(message, messageType)
    if messageType == Enum.MessageType.MessageOutput then
        warn("GLITCHFINDER : Log recieved",string.lower(message))
        if string.find(string.lower(message),"glitched") then
            warn("GLITCHFINDER : glitched biome found")
        else
            warn("GLITCHFINDER : rejoining")
            task.wait(1)
            game.Players.LocalPlayer:Kick() 
            --queue_on_teleport(ThingLikeLoadstring)
        end
    end
    warn("GLITCHFINDER : started")
    LogService.MessageOut:Connect(onMessageOut)
    end
end
