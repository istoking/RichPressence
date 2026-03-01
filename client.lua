local QBCore = exports['qb-core']:GetCoreObject()

-- =========================
-- DISCORD RPC SETTINGS
-- =========================
local RPC = {
    AppId = yourappid, -- replace with your own app ID

    LargeAsset = "large_asset", -- image name for the large icon (set in your Discord app settings)
    LargeText  = "large text", -- hover text for the large icon (replace with your server name or slogan)
    SmallAsset = "button", -- button icon (set in your Discord app settings)
    SmallText  = "discord.gg/yourinvite", -- replace with your own invite or website

    Buttons = {
        { index = 0, name = "Join Discord",    url = "https://discord.gg/invite" },
        { index = 1, name = "Connect to the City!",  url = "https://cfx.re/join/serverID" },
    },

    UpdateIntervalMs  = 20000,
    AssetIntervalMs   = 120000,
    DispatchStatusMs  = 60000,

    ShowPlayerName = true,

    Taglines = {
        "Serious RP. Silly choices.",
        "Consequences sold separately.",
        "Keep it clean. Or don’t. 👀",
        "NZ time. Worldwide problems.",
        "Law-abiding-ish, on weekdays.",
        "Big plans. Small alibis.",
        "Make money. Make enemies.",
        "Respect the grind. Fear the cops.",
        "Hustle first. Explain later.",
        "Premium RP. Budget morals.",
        "Calm streets. Loud decisions.",
        "Roleplay hard. Sleep never.",
        "Friendly faces. Shady deals.",
        "Talk nice. Drive faster.",
        "Your story. Your rap sheet.",
        "Do good. Do bad. Do both.",
        "Clean hands. Dirty money.",
        "Local time, imported chaos.",
        "Work honest. Lie better.",
        "Legal-ish. Allegedly.",
        "Strong RP, weak impulse control.",
        "No refunds on bad decisions.",
        "Where plans meet panic.",
        "Streets remember. So do logs.",
        "Start legit. End… creative.",
        "The grind never sleeps. Neither do we.",
        "Earn it. Burn it.",
        "Be a hero. Be a menace.",
        "Lowkey RP, highkey chaos.",
        "Drama-free(ish).",
        "Keep it IC. Mostly.",
        "Good vibes, bad habits.",
        "If it’s stupid but works…",
        "Every action, a court date.",
        "Slow days. Fast cars.",
        "Where “my bad” is a lifestyle.",
        "Play smart. Get caught anyway.",
        "New day, new felony.",
        "Serious faces. Funny outcomes.",
        "Crime pays. Anxiety charges interest.",
        "Build a life. Ruin it elegantly.",
        "Your grindset vs. my headset.",
        "Honest work, dishonest hours.",
        "Make friends. Make getaways.",
        "Don’t start it. Finish it.",
        "The city provides. The city snitches.",
        "Big RP energy.",
        "Choices. Consequences. Comedy.",
        "We do it for the lore.",
        "Another day, another scheme.",
        "Mind the speed bumps. And the law.",
        "Streets are watching. Smile.",
        "Drive safe. Run faster.",
        "Play clean. Get dirty money.",
        "It’s not a problem if you profit.",
        "Clutch RP, scuffed plans.",
        "Talk your way out. Or don’t.",
        "Make it make sense (optional).",
        "High standards. Low bail.",
        "No pixel left un-hustled.",
        "Character development incoming.",
        "Your honour, I can explain.",
        "We have laws. We ignore them.",
        "Civ life? Never heard of it.",
        "Keep calm and commit… roleplay.",
        "Fine people. Fined people.",
        "Plans are temporary. Clips are forever.",
        "Everything is legal with confidence.",
        "Serious RP, unserious drivers.",
        "Welcome to RP. Act normal.",
        "Make it big. Make it messy.",
        "Grindset: enabled. Common sense: off.",
        "More RP than your tyres have tread.",
        "The hustle is real. The alibi isn’t.",
        "We RP. The city reacts.",
        "Live, laugh, lawyer up.",
        "Your job is your cover.",
        "Be polite. Be dangerous.",
        "Chaos, curated.",
        "The city bites back.",
        "Keep it serious. Keep it spicy.",
        "Soft hearts. Hard pursuits.",
        "We sell dreams and regret.",
        "Better RP through poor decisions.",
        "Where “just one more job” lives.",
        "Don’t worry, it’s “for RP.”",
        "Make the story worth the sentence.",
    },

    RareLines = {
        "Definitely not doing crime. Again.",
        "Innocent until I log off.",
        "This is fine. 🔥 (it’s not)",
        "Your honour, it was lag.",
        "If found, return to my lawyer.",
        "10-80? Never heard of her.",
        "Just borrowing this vehicle.",
        "It’s not stolen. It’s relocated.",
        "I plead: oopsie daisy.",
        "Officer, I’m roleplaying.",
        "This is a misunderstanding… aggressively.",
        "I saw the sign. I ignored it.",
        "Today’s mood: probable cause.",
        "Nothing to see here. Move along.",
        "My pockets? Decorative.",
        "I’m just a humble entrepreneur.",
        "Taxes? Never met her.",
        "Witnesses are temporary. Dashcams aren’t.",
        "My GPS said “run.”",
        "If it’s illegal, why is it profitable?",
        "I can explain. I won’t, but I can.",
        "That was my evil twin.",
        "Blame the locals.",
        "I was framed by my own decisions.",
        "I’m not speeding. I’m time travelling.",
        "This car handles like my life: poorly.",
        "Don’t tase me, I’m the storyline!",
        "I thought the siren was ambience.",
        "It’s a rental. Trust me.",
        "I’m allergic to handcuffs.",
        "Crime? I prefer “side quests.”",
        "My lawyer said stop talking.",
        "If I stop, I’ll have to think.",
        "The city made me do it.",
        "I’m a good person with bad timing.",
        "I pay bail like a subscription.",
        "I didn’t run. I repositioned.",
        "I’m just here for the vibes (and money).",
        "Sir, that’s not my bag. That’s my future.",
        "I’m doing cardio from the police.",
        "“Allegedly” is my middle name.",
        "I swear this is a legal speed.",
        "I’m being chased for character growth.",
        "This pursuit is sponsored by regret.",
        "If I’m quiet, maybe they’ll forget me.",
        "I consent to nothing.",
        "I’m on my way to become a better person.",
        "Dispatch, it’s a skill issue.",
        "I would like to respawn, please.",
        "That light was green… emotionally.",
        "My bad. (derogatory)",
        "Your honour, I was just vibing.",
        "I thought “felony” meant fast.",
        "This is not what I meant by free roam.",
        "I’m wanted for being iconic.",
        "Sirens behind me? That’s my soundtrack.",
        "I’m not resisting, I’m emoting.",
        "I’m innocent. Ask my accomplice.",
        "I have rights and no plan.",
        "I swear I’m a civilian.",
        "The plan was flawless. The execution wasn’t.",
        "I’m a changed person. Temporarily.",
        "If I die, tell my stash I love it.",
        "I’m not a criminal, I’m content.",
        "Officer, you’re hurting my narrative.",
        "I’m fine. Everything is scuffed.",
        "I didn’t panic. I improvised.",
        "This is my legal driving style.",
        "I’m going to turn myself in… eventually.",
        "I’m not running, I’m late.",
        "That’s not contraband. That’s seasoning.",
        "I forgot my license. And my morals.",
        "This chase is pay-to-win.",
        "My car is faster than my conscience.",
        "I’m being oppressed by speed limits.",
        "I’m a law enthusiast. From afar.",
        "The only thing I smuggle is anxiety.",
        "I’m not guilty, I’m just unlucky.",
        "Can we do this after I clock out?",
        "Tell the judge I said “gg.”",
        "It’s not money laundering, it’s hygiene.",
        "I’m a pacifist with a felony.",
        "I’m not suspicious, I’m moisturized.",
    },
}

-- =========================
-- ZONE PRETTY NAMES
-- =========================
local ZonePretty = {
    AIRP = "LSIA",
    ALAMO = "Alamo Sea",
    DAVIS = "Davis",
    DELPE = "Del Perro",
    DTVINE = "Downtown Vinewood",
    EAST_V = "East Vinewood",
    EBURO = "El Burro Heights",
    HAWICK = "Hawick",
    MIRR = "Mirror Park",
    MORN = "Morningwood",
    PALETO = "Paleto Bay",
    PBOX = "Pillbox Hill",
    RANCHO = "Rancho",
    ROCKF = "Rockford Hills",
    SANDY = "Sandy Shores",
    STRAW = "Strawberry",
    VESPU = "Vespucci",
    VINE = "Vinewood",
}

-- =========================
-- RUNTIME STATE
-- =========================
local firstSpawn = true
local PlayerData = {}
local dispatchUntil = 0

local OnlineCount = 0
local MaxClients = tonumber(GetConvar('sv_maxclients', '48')) or 48

local function nowMs() return GetGameTimer() end
    
-- Discord RPC button helper (max 2 buttons; indices 0/1). Re-applies periodically to avoid Discord/FiveM flakiness.
-- =========================
-- DISCORD BUTTONS (SAFE)
-- =========================
local actionsAppliedAt = 0

local function sanitizeButtons(buttons)
    local out = {}
    if type(buttons) ~= "table" then return out end

    for _, b in pairs(buttons) do
        if type(b) == "table" then
            local name = b.name or b.text
            local url  = b.url
            if type(name) == "string" and name ~= "" and type(url) == "string" and url ~= "" then
                out[#out + 1] = { index = b.index, name = name, url = url }
            end
        end
    end

    if #out > 2 then
        out = { out[1], out[2] }
    end

    for i, b in ipairs(out) do
        b.index = (b.index == 0 or b.index == 1) and b.index or (i - 1)
    end

    return out
end

local function applyDiscordActions(force)
    local t = GetGameTimer()
    if (not force) and (t - actionsAppliedAt) < 15000 then
        return
    end

    -- AppId must be set before actions.
    SetDiscordAppId(RPC.AppId)
    local btns = sanitizeButtons(RPC.Buttons)
    for _, v in ipairs(btns) do
        pcall(SetDiscordRichPresenceAction, v.index, v.name, v.url)
    end

    actionsAppliedAt = t
end

local function pickRandom(list) return list[math.random(1, #list)] end

local function getZoneLabel(coords)
    local zone = GetNameOfZone(coords.x, coords.y, coords.z)
    return ZonePretty[zone] or zone or "San Andreas"
end

local function getVehName(veh)
    if not veh or veh == 0 then return nil end
    local model = GetEntityModel(veh)
    local display = GetDisplayNameFromVehicleModel(model)
    local name = GetLabelText(display)
    if name == "NULL" or not name then name = display end
    return name
end

local function getSpeedMPH(veh)
    return math.floor(GetEntitySpeed(veh) * 2.236936 + 0.5)
end

local function speedBracket(mph)
    if mph >= 120 then return "FLYING"
    elseif mph >= 70 then return "SPEEDING"
    elseif mph >= 10 then return "CRUISING"
    else return "PARKED"
    end
end

local function isPhoneFocused()
    return IsNuiFocused() == 1
end

-- =========================
-- JOB/GANG FORMATTING
-- =========================
local function fmtJob()
    local job = PlayerData.job
    if not job or not job.name then return "Civilian" end

    local label = job.label or job.name
    local grade = (job.grade and (job.grade.name or job.grade.level)) or ""
    local duty = (job.onduty == true) and "On Duty" or "Off Duty"

    -- Emergency/service “special” formatting
    if job.type == "leo" then
        return ("LEO • %s (%s)"):format(grade ~= "" and grade or label, duty)
    elseif job.type == "ems" then
        return ("EMS • %s (%s)"):format(grade ~= "" and grade or label, duty)
    elseif job.type == "mechanic" then
        return ("MECH • %s (%s)"):format(grade ~= "" and grade or label, duty)
    end

    -- Tow & Taxi special (your request)
    if job.name == "tow" then
        return ("TOW • %s (%s)"):format(grade ~= "" and grade or "Operator", duty)
    elseif job.name == "taxi" then
        return ("TAXI • %s (%s)"):format(grade ~= "" and grade or "Driver", duty)
    end

    -- Regular jobs
    if grade ~= "" then
        return ("%s • %s"):format(label, grade)
    end
    return label
end

local function fmtGang()
    local gang = PlayerData.gang
    if not gang or not gang.name or gang.name == "none" then return nil end
    local label = gang.label or gang.name
    local grade = (gang.grade and (gang.grade.name or gang.grade.level)) or ""
    if grade ~= "" then
        return ("%s • %s"):format(label, grade)
    end
    return label
end

-- =========================
-- BUILD PRESENCE
-- =========================
local function buildPresence()
    local ped = PlayerPedId()
    if not ped or ped == 0 then return nil end

    local pId = GetPlayerServerId(PlayerId())
    local pName = GetPlayerName(PlayerId()) or "Unknown"

    local coords = GetEntityCoords(ped)
    local zoneLabel = getZoneLabel(coords)

    local jobText = fmtJob()
    local gangText = fmtGang()

    local identity = RPC.ShowPlayerName and ("ID %s • %s"):format(pId, pName) or ("ID %s"):format(pId)

    -- “Details line” gets: identity + job + accurate count
    local details = ("%s • %s • %d/%d online"):format(identity, jobText, OnlineCount, MaxClients)

    local statusBits = {}

    if nowMs() < dispatchUntil then
        statusBits[#statusBits+1] = "Responding"
    end

    if isPhoneFocused() then
        statusBits[#statusBits+1] = "On the phone"
    end

    if gangText then
        statusBits[#statusBits+1] = gangText
    end

    -- Rare easter egg (2%)
    if math.random(1, 100) <= 2 then
        statusBits[#statusBits+1] = pickRandom(RPC.RareLines)
        return details, table.concat(statusBits, " • ")
    end

    local tagline = pickRandom(RPC.Taglines)

    if IsEntityInWater(ped) and IsPedSwimming(ped) then
        statusBits[#statusBits+1] = ("Swimming near %s"):format(zoneLabel)
        statusBits[#statusBits+1] = tagline
        return details, table.concat(statusBits, " • ")
    end

    if IsPedOnFoot(ped) then
        if IsPedSprinting(ped) then
            statusBits[#statusBits+1] = ("Sprinting in %s"):format(zoneLabel)
        elseif IsPedRunning(ped) then
            statusBits[#statusBits+1] = ("Running in %s"):format(zoneLabel)
        elseif IsPedWalking(ped) then
            statusBits[#statusBits+1] = ("Walking in %s"):format(zoneLabel)
        else
            statusBits[#statusBits+1] = ("Posted up in %s"):format(zoneLabel)
        end
        statusBits[#statusBits+1] = tagline
        return details, table.concat(statusBits, " • ")
    end

    local veh = GetVehiclePedIsIn(ped, false)
    if veh and veh ~= 0 then
        local vehName = getVehName(veh) or "Vehicle"
        local mph = getSpeedMPH(veh)
        local bracket = speedBracket(mph)

        if IsPedInAnyHeli(ped) or IsPedInAnyPlane(ped) then
            if IsEntityInAir(veh) or GetEntityHeightAboveGround(veh) > 5.0 then
                statusBits[#statusBits+1] = ("Airborne over %s"):format(zoneLabel)
            else
                statusBits[#statusBits+1] = ("Landed in %s"):format(zoneLabel)
            end
            statusBits[#statusBits+1] = ("(%s)"):format(vehName)
            statusBits[#statusBits+1] = tagline
            return details, table.concat(statusBits, " • ")
        end

        if IsPedInAnyBoat(ped) and IsEntityInWater(veh) then
            statusBits[#statusBits+1] = ("Sailing near %s"):format(zoneLabel)
            statusBits[#statusBits+1] = ("(%s)"):format(vehName)
            statusBits[#statusBits+1] = tagline
            return details, table.concat(statusBits, " • ")
        end

        if bracket == "PARKED" then
            statusBits[#statusBits+1] = ("Parked in %s"):format(zoneLabel)
            statusBits[#statusBits+1] = ("(%s)"):format(vehName)
        else
            statusBits[#statusBits+1] = ("%s • %s • %d mph"):format(bracket, vehName, mph)
            statusBits[#statusBits+1] = zoneLabel
        end

        statusBits[#statusBits+1] = tagline
        return details, table.concat(statusBits, " • ")
    end

    statusBits[#statusBits+1] = ("Exploring %s"):format(zoneLabel)
    statusBits[#statusBits+1] = tagline
    return details, table.concat(statusBits, " • ")
end

-- =========================
-- QBCORE SYNC
-- =========================
local function refreshPlayerData()
            applyDiscordActions(true)
applyDiscordActions(true)
local pd = QBCore.Functions.GetPlayerData()
    if pd then PlayerData = pd end
end

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    refreshPlayerData()
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(job)
    PlayerData.job = job
end)

RegisterNetEvent('QBCore:Client:OnGangUpdate', function(gang)
    PlayerData.gang = gang
end)

RegisterNetEvent('QBCore:Client:SetDuty', function(duty)
    if PlayerData.job then PlayerData.job.onduty = duty end
end)

-- =========================
-- ACCURATE SERVER COUNT (FROM SERVER.LUA)
-- =========================
RegisterNetEvent('rpc:client:SetPlayerCount', function(count, maxClients)
    OnlineCount = tonumber(count) or OnlineCount
    MaxClients = tonumber(maxClients) or MaxClients
end)

-- =========================
-- PS-DISPATCH “RESPONDING” HOOKS
-- =========================
local function isDispatchJob()
    local job = PlayerData and PlayerData.job
    return job and (job.type == 'leo' or job.type == 'ems')
end

local function bumpDispatchStatus()
    -- ps-dispatch fires alerts (e.g. shots fired) for everyone; only LEO/EMS should show "Responding"
    if not isDispatchJob() then return end
    dispatchUntil = nowMs() + RPC.DispatchStatusMs
end

RegisterNetEvent('ps-dispatch:client:notify', bumpDispatchStatus)
RegisterNetEvent('ps-dispatch:client:NewAlert', bumpDispatchStatus)
RegisterNetEvent('ps-dispatch:client:AddCall', bumpDispatchStatus)
RegisterNetEvent('ps-dispatch:client:CreateBlip', bumpDispatchStatus)
RegisterNetEvent('ps-dispatch:client:DispatchNotify', bumpDispatchStatus)

-- =========================
-- INIT DISCORD BUTTONS + ASSETS
-- =========================
CreateThread(function()
    math.randomseed(GetGameTimer())

    -- allow QBCore/PlayerData to populate
    Wait(1500)
    refreshPlayerData()
end)

CreateThread(function()
    while true do
        SetDiscordAppId(RPC.AppId)
        applyDiscordActions()
        SetDiscordRichPresenceAsset(RPC.LargeAsset)
        SetDiscordRichPresenceAssetText(RPC.LargeText)
        SetDiscordRichPresenceAssetSmall(RPC.SmallAsset)
        SetDiscordRichPresenceAssetSmallText(RPC.SmallText)
        Wait(RPC.AssetIntervalMs)
    end
end)

-- =========================
-- SMART PRESENCE UPDATES
-- =========================
CreateThread(function()
    local lastDetails, lastState = nil, nil

    while true do
        local details, state = buildPresence()
        if details and state then
            if details ~= lastDetails or state ~= lastState then
                SetRichPresence(details .. "\n" .. state)
                lastDetails, lastState = details, state
            end
        end
        Wait(RPC.UpdateIntervalMs)
    end
end)
