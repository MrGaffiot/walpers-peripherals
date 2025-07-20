--Peripherals stuff
local chatBox = peripheral.find("chatBox")

while true do
    local event, username, message, uuid, isHidden = os.pullEvent("chat")
    if string.sub(message, 1, 1) == "!" then
        if string.sub(message, 2, #message-1) == "help" then
            chatBox.sendMessage("Hello world!")
        end
    end
end