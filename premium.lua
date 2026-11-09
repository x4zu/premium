local creatorId = game.CreatorId
local communityCreators = {
    [8818124]    = 'https://api.luarmor.net/files/v4/loaders/3e087d3dde490fa19b372d861dcafeee.lua', -- Violance District
    [186538912]    = 'https://api.luarmor.net/files/v4/loaders/3ea26ea572fa2128170cab697836e8e0.lua', -- One Shot
    [861404864]    = 'https://api.luarmor.net/files/v4/loaders/a4c0e992870c437145b94c49df06a6e5.lua', -- Anime Zero
    [335191033]    = 'https://api.luarmor.net/files/v4/loaders/0874ce5ec74a356c0c19641215978a75.lua', -- Foresters
    [32032540]    = 'https://api.luarmor.net/files/v4/loaders/2da0a674d0454f94e8e6adc1e521b38d.lua', -- Heavyweight Fishing
    [1065149497]    = 'https://api.luarmor.net/files/v4/loaders/1692079e85ff017e5a5bd9cca39d6b07.lua', -- Dont Splash
    [34216976]    = 'https://api.luarmor.net/files/v4/loaders/4d5797dea7a6042770216b271a9b5d43.lua', -- What If Disasters
    [35289532]    = 'https://api.luarmor.net/files/v4/loaders/b84d822df496ab42d1af9a5de60f5f5c.lua', -- Dig
    [879801276]    = 'https://api.luarmor.net/files/v4/loaders/cc16ba20061be682a1a93ef0b9d9884a.lua', -- GrowBlox
    [830944259]    = 'https://api.luarmor.net/files/v4/loaders/3035078b088fb27c36df708c5ff9e779.lua', -- Rod And Reef
}

local url = communityCreators[creatorId]
if url then
    print("[Nemesis] Game supported! Loading premium script...")
    loadstring(game:HttpGet(url))()
else
    warn("[Nemesis] Unsupported game (creator " .. tostring(creatorId) .. ").")
end
