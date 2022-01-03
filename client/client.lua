local msg = ""
local showMessage = false

RegisterNetEvent('NAT2K15:STAFFANNOUNCE')
AddEventHandler('NAT2K15:STAFFANNOUNCE', function(message)
    msg = message
    showMessage = true
    PlaySoundFrontend(-1, "DELETE","HUD_DEATHMATCH_SOUNDSET", 1)
	Citizen.Wait(1000 * config.length)
    showMessage = false
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if(showMessage == true) then
            scaleform = Initialize("mp_big_message_freemode")
            DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 255, 0)
        end
    end
end)


function Initialize(scaleform)
    local scaleform = RequestScaleformMovie(scaleform)
    while not HasScaleformMovieLoaded(scaleform) do
        Citizen.Wait(0)
    end
    PushScaleformMovieFunction(scaleform, "SHOW_SHARD_WASTED_MP_MESSAGE")
    PushScaleformMovieFunctionParameterString("~r~Staff Announcment")
    PushScaleformMovieFunctionParameterString(msg)
    PopScaleformMovieFunctionVoid()
    return scaleform
end
