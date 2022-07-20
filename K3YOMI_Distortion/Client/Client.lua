IS_CAMERA_BEING_AFFECTED = false 
StopGameplayCamShaking()
Citizen.CreateThread(function()
    while true do
      Citizen.Wait(2000)
      IS_CURRENTLY_IN_VEHICLE = GetVehiclePedIsIn(GetPlayerPed(-1), false)
      if IS_CURRENTLY_IN_VEHICLE ~= 0 and IS_CAMERA_BEING_AFFECTED == false then 
        IS_CAMERA_BEING_AFFECTED = true 
          StopGameplayCamShaking()
          ShakeGameplayCam("FAMILY5_DRUG_TRIP_SHAKE", 0.05)	
      end
      if IS_CURRENTLY_IN_VEHICLE == 0 and IS_CAMERA_BEING_AFFECTED == true then 
        IS_CAMERA_BEING_AFFECTED = false
        StopGameplayCamShaking()
    end
  end
end)
