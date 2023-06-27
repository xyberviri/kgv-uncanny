
CreateThread(function()
	RequestStreamedTextureDict("uhhh")
	
	while true do Wait(0)
		local ratio = GetAspectRatio()
		
		local pool = GetGamePool("CPed")
		
		for i,v in pairs(pool) do
			local boneId = 31086
			local pos = GetWorldPositionOfEntityBone(v, GetPedBoneIndex(v, boneId))
			local dist = #(GetFinalRenderedCamCoord() - pos)
			local scale = (1.0/dist) * (1.0/GetFinalRenderedCamFov()) * 12.0
			
			if dist < 50.0 then
				SetDrawOrigin(pos)
				DrawSprite("uhhh", IsPedAPlayer(v) and "canny" or "uncanny", 0.0, 0.0, scale, scale * ratio, 0.0, 255, 255, 255, 255)
				ClearDrawOrigin()
			end
		end
	end
end)