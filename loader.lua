local function GetURL()
	local res = game:HttpGet("https://raw.githubusercontent.com/joemuma/script/main/game_"..game.PlaceId, true)
end

local Banned = {
	"Roblox",
	"Builderman"
}

local function LoadGame()
    if pcall(function() return GetURL("Game_"..game.PlaceId) end) then
	    loadstring(game:HttpGet("https://raw.githubusercontent.com/joemuma/script/main/game_"..game.PlaceId))()
	else
	  	loadstring(game:HttpGet("https://raw.githubusercontent.com/joemuma/script/main/game_Unsupported"))()
    end
end

LoadGame()

for i, v in pairs(Banned) do
	if v == game:GetService("Players").LocalPlayer.Name then
		game:GetService("Players").LocalPlayer:Kick("\n\nSkiddAuth\n\nYou are Blacked Listed from this Script.")	
	end
end
