
-- ██████╗░██╗██╗░░░██╗███████╗██╗  ██████╗░░█████╗░░██████╗███████╗
-- ██╔══██╗██║╚██╗░██╔╝██╔════╝██║  ██╔══██╗██╔══██╗██╔════╝██╔════╝
-- ██████╦╝██║░╚████╔╝░█████╗░░██║  ██████╦╝███████║╚█████╗░█████╗░░
-- ██╔══██╗██║░░╚██╔╝░░██╔══╝░░██║  ██╔══██╗██╔══██║░╚═══██╗██╔══╝░░
-- ██████╦╝██║░░░██║░░░███████╗██║  ██████╦╝██║░░██║██████╔╝███████╗
-- ╚═════╝░╚═╝░░░╚═╝░░░╚══════╝╚═╝  ╚═════╝░╚═╝░░╚═╝╚═════╝░╚══════╝
-- Desorrador y Soporte de Discord: https://discord.gg/PnDGu92dnD
-- Github para mis scripts: https://github.com/Biyei

Citizen.CreateThread(function()
	while true do
		SetDiscordAppId(Config.DiscordAppID)
		SetDiscordRichPresenceAsset(Config.LargeImageAsset)
        SetDiscordRichPresenceAssetText(Config.LargeImageText)
        SetDiscordRichPresenceAssetSmall(Config.SmallImageAsset)
        SetDiscordRichPresenceAssetSmallText(Config.SmallImageText)
        local stringrich2 = nil
        if Config.Random == true then
            local stringrich = math.random(1,4)
            if stringrich == 1 then
                stringrich2 = "ID: " .. GetPlayerServerId(PlayerId()) .. "  | " .. Config.DiscordRich1
            end
            if stringrich == 2 then
                stringrich2 = "ID: " .. GetPlayerServerId(PlayerId()) .. "  | " .. Config.DiscordRich2
            end
            if stringrich == 3 then
                stringrich2 = "ID: " .. GetPlayerServerId(PlayerId()) .. "  | " .. Config.DiscordRich3
            end
            if stringrich == 4 then
                stringrich2 = "ID: " .. GetPlayerServerId(PlayerId()) .. "  | " .. Config.DiscordRich4
            end
        else
                stringrich2 = "ID: " .. GetPlayerServerId(PlayerId()) .. "  | " .. Config.DiscordRich
        end
        SetRichPresence(stringrich2)
        SetDiscordRichPresenceAction(0, Config.Button1, Config.Button1URL)
        SetDiscordRichPresenceAction(1, Config.Button2, Config.Button2URL)

		Citizen.Wait(Config.UpdateTime)
	end
end)