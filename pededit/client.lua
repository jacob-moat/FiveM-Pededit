Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
    
        -- Traffic and Ped desnity managment
        SetTrafficDesnity(0.5) -- 0.0 = none, 1.0 = normal
        SetPedDensity(0.5) -- 0.0 = none, 1.0 = normal
    end
end)

function SetTrafficDesnity(density)
    SetParkedVehicleDensityMuliplierThisFrame(density)
    SetVehicleDensityMuliplierThisFrame(density)
    SetRandomVehicleDensityMuliplierThisFrame(density)
end

function SetPedDensity(density)
    SetPedDensityMultiplierThisFrame(density)
    SetScenarioPedDesnityMultiplierThisFrame(density)
end