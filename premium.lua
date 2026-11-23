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
    [35489258]    = 'https://api.luarmor.net/files/v4/loaders/7b6150609409a7dd8ef50fa6b809d6c2.lua', -- The Forge x
    [7381705]    = 'https://api.luarmor.net/files/v4/loaders/19ceba576f0db00e9c0262328397980c.lua', -- Fisch COMPANION HATS
    [257648128]    = 'https://api.luarmor.net/files/v4/loaders/1f804abb7a3a05ecdde34a5977f4dfb6.lua', -- Ant Evolution
    [911288936]    = 'https://api.luarmor.net/files/v4/loaders/66d1c8e4eaa6c2b1ac4f4803e27346c3.lua', -- SPIRIT BEASTS Cultivation Unbound
    [675425213]    = 'https://api.luarmor.net/files/v4/loaders/11112ec071715d338aabd3be3970253e.lua', -- ABILITIES CRAZY 8 Ball
    [890234173]    = 'https://api.luarmor.net/files/v4/loaders/9c87f82cbb67809c848c6e900a9ab979.lua', -- Volley Bomb
    [109771238]    = 'https://api.luarmor.net/files/v4/loaders/712ffeae2fe1817989cb94bffb3f190f.lua', -- COBRA FERAL Animal Survival
    [4999963]    = 'https://api.luarmor.net/files/v4/loaders/90b79ec97d74b75e877b03d90190f57b.lua', -- Driving Empire LIMITED + DRIFT
    [93792414]    = 'https://api.luarmor.net/files/v4/loaders/94519636c5b35c647d68681046749e18.lua', -- Realistic Hunting
    [35566755]    = 'https://api.luarmor.net/files/v4/loaders/0e1a954a750fb778e150e9b80eed6762.lua', -- Vox Seas
    [1091998987]    = 'https://api.luarmor.net/files/v4/loaders/06786b82552353fcf00c370e95365525.lua', -- Highway Racing
    [35139043]    = 'https://api.luarmor.net/files/v4/loaders/97370eb2c2d88fd1c07263f0ecd24483.lua', -- RELEASE Anime Crusaders X
}

local url = communityCreators[creatorId]
if url then
    print("[Nemesis] Game supported! Loading premium script...")
    loadstring(game:HttpGet(url))()
else
    print("[Nemesis] Not a premium game, checking keyless scripts...")
    -- site first; GitHub copy as a backup if the site is down or over quota
    local sources = {
        "https://www.nemesishub.xyz/k",
        "https://raw.githubusercontent.com/x4zu/KeylessLoader/main/keyless.lua",
    }
    local ran = false
    for _, src in ipairs(sources) do
        local ok, body = pcall(function() return game:HttpGet(src) end)
        if ok and type(body) == "string" and #body > 0 then
            local fn = loadstring(body)
            if fn then fn() ran = true break end
        end
    end
    if not ran then warn("[Nemesis] Keyless loader unavailable, try again later.") end
end
