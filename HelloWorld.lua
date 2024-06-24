HelloWorld_Text = {}
local channel = "SAY"

SLASH_HELLO_WORLD_ADD1 = "/hwadd"
SLASH_HELLO_WORLD_ADD2 = "/helloworldadd" -- an alias for /hwadd
SlashCmdList["HELLO_WORLD_ADD"] = function(msg)
	local id, text = msg:match("(%S+)%s+(.+)")
	if id and text then 
		HelloWorldText[id:lower()] = text 
	else 
		print("Usage: /hwadd <id> <text>")
	end 
end 

SLASH_HELLO_WORLD_SHOW1 = "/hwadd"
SLASH_HELLO_WORLD_SHOW2 = "/helloworldshow" -- an alias for /hwshow
SlashCmdList["HELLO_WORLD_SHOW"] = function(msg)[msg:lower()]
	local text = HelloWorld_Text
	if text then 
		SendChatMessage(text, channel) 
	end 
end 