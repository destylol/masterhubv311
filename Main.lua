game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Discontinued", 
	Text = "This version has been discontinued, join the discord for the new one discord.gg/softworks",
	Icon = "" 
})

wait(1)

syn.request(
   {
       Url = "http://127.0.0.1:6463/rpc?v=1",
       Method = "POST",
       Headers = {
           ["Content-Type"] = "application/json",
           ["origin"] = "https://discord.com",
       },
       Body = game:GetService("HttpService"):JSONEncode(
           {
               ["args"] = {
                   ["code"] = "2PbZ4qHhMe",
               },
               ["cmd"] = "INVITE_BROWSER",
               ["nonce"] = "."
           })
   })
