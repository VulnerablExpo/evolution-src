local body = game:GetService("HttpService"):JSONEncode({
    ["$api_dev_key"] = "cPhL61mOezY18TxsojxcDqOgMyHMQnUO",
    api_option = "paste",
    api_paste_code = "heytest", -- // Config Code
    api_paste_name = "EVOCONFIG",
    api_paste_expire_date = "N",
    api_paste_private = 0,
    api_paste_format = "json"
})

local data = http_request({
    Url = 'https://pastebin.com/api/api_post.php'; 
    Method = 'POST';
    Body = body;
})

for i,v in pairs(data) do
    print(i,v)
    
    if type(v) == "table" then
        for i2,v2 in pairs(v) do
            warn(i2,v2)
        end
    end
end