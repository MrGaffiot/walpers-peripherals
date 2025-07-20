--Peripherals stuff
local chatBox = peripheral.find("chatBox")
local detector = peripheral.find("playerDetector")

while true do
    local event, username, message, uuid, isHidden = os.pullEvent("chat")
    if string.sub(message, 1, 1) == "!" then
        if string.sub(message, 2, #message) == "help" then
            chatBox.sendMessage("Commands so far: !help, !locate")
        elseif string.sub(message, 2, #message) == "locate" then
            chatBox.sendMessage("Enter the name of the player: ")
            local event, username, playerName, uuid, isHidden = os.pullEvent("chat")
            local playerPos = detector.getPlayerPos(playerName)
            chatBox.sendMessage(playerName .. " is at " .. playerPos.x .. " " .. playerPos.y .. " " .. playerPos.z)
        end
    end
end