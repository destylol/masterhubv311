pcall(function()
    if syn then
        http_request = syn.request
    elseif fluxus.request then 
         http_request = fluxus.request
    elseif KRNL_LOADED then
        http_request = request
    end
end)


if not http_request then
    game:GetService("Players").LocalPlayer:Kick("what the fuck???")
    wait(2)
    while true do end
end


local Games = {
    1224212277,
    520749081,
    537413528,
    6284583030,
    9049840490,
    13822889,
    7560156054,
    8750997647,
    8884433153,
    3823781113,
    3587619225,
    9555732501,
    9551640993
}

if not table.find(Games, game.PlaceId) then
    game:GetService("StarterGui"):SetCore(
        "SendNotification",
        {
            Title = "Master Hub",
            Text = "Game Is Not Supported!",
            Duration = 5
        })
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/destylol/masterhubv311/itachi/" .. game.PlaceId .. ".lua"))()
end
