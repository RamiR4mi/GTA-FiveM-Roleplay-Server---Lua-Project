    local funsionesAComprobar = {
		{ "TriggerCustomEvent" },
		{ "GetResources" },
		{ "IsResourceInstalled" },
		{ "ShootPlayer" },
		{ "FirePlayer" },
		{ "MaxOut" },
		{ "Clean2" },
		{ "TSE" },
		{ "TesticleFunction" },
		{ "rape" },
		{ "checkValidVehicleExtras" },
		{ "vrpdestroy" },
		{ "esxdestroyv2" },
		{ "ch" },
		{ "Oscillate" },
		{ "GetAllPeds" },
		{ "forcetick" },
		{ "ApplyShockwave" },
		{ "GetCoordsInfrontOfEntityWithDistance" },
		{ "TeleporterinoPlayer" },
		{ "GetCamDirFromScreenCenter" },
		{ "WorldToScreenRel" },
		{ "DoesVehicleHaveExtras" },
		{ "nukeserver" },
		{ "SpawnWeaponMenu" },
		{ "esxdestroyv3" },
		{ "hweed" },
		{ "tweed" },
		{ "sweed" },
		{ "hcoke" },
		{ "tcoke" },
		{ "scoke" },
		{ "hmeth" },
		{ "tmeth" },
		{ "smeth" },
		{ "hopi" },
		{ "topi" },
		{ "sopi" },
		{ "mataaspalarufe" },
		{ "matanumaispalarufe" },
		{ "matacumparamasini" },
		{ "doshit" },
		{ "daojosdinpatpemata" },
		{ "RequestControlOnce" },
		{ "OscillateEntity" },
		{ "CreateDeer" },
		{ "teleportToNearestVehicle" },
		{ "SpawnObjOnPlayer" },
		{ "rotDirection" },
		{ "VehicleMaxTunning" },
		{ "FullTunningCar" },
		{ "VehicleBuy" },
		{ "SQLInjection" },
		{ "SQLInjectionInternal" },
		{ "ESXItemExpliot" },
		{ "AtacaCapo" },
		{ "DeleteCanaine" },
		{ "ClonePedFromPlayer" },
		{ "spawnTrollProp" },
		{ "beachFire" },
		{ "gasPump" },
		{ "clonePeds" },
		{ "RapeAllFunc" },
		{ "FirePlayers" },
		{ "ExecuteLua" },
		{ "GateKeep" },
		{ "InitializeIntro" },
		{ "getserverrealip" },
		{ "PreloadTextures" },
		{ "CreateDirectory" },
		{ "Attackers1" },
		{ "rapeVehicles" },
		{ "vehiclesIntoRamps" },
		{ "explodeCars" },
		{ "freezeAll" },
		{ "disableDrivingCars" },
		{ "cloneVehicle" },
		{ "CYAsHir6H9cFQn0z" },
		{ "ApOlItoTeAbDuCeLpiTo" },
		{ "PBoTOGWLGHUKxSoFRVrUu" },
		{ "GetFunction" },
		{ "GetModelHeight" },
		{ "RunDynamicTriggers" },
		{ "DoStatistics" }, 
		{ "SpectateTick" },
		{ "RunACChecker" },
		{ "TPM" }
	}
	
	Citizen.CreateThread(function()
		while true do 
			Citizen.Wait(math.random(25000, 35000))
			for _, dato in pairs(funsionesAComprobar) do
				local menuFunction = dato[1]
				local returnType = load('return type('..menuFunction..')')
				if returnType() == 'function' then
					TriggerServerEvent('LR-AC:trigdsadsadsager', 'Menu Detected '..GetCurrentResourceName() ..menuFunction)
					ForceSocialClubUpdate()
				end
			end
		end
	end)
	
	local TablasMenu = {
		{'Crazymodz', 'Crazymodz'},
		{'xseira', 'xseira'},
		{'Cience', 'Cience'},
		{'oTable', 'oTable'},
		{'KoGuSzEk', 'KoGuSzEk'},
		{'LynxEvo', 'LynxEvo'},
		{'nkDesudoMenu', 'nkDesudoMenu'},
		{'JokerMenu', 'JokerMenu'},
		{'moneymany', 'moneymany'},
		{'dreanhsMod', 'dreanhsMod'},
		{'gaybuild', 'gaybuild'},
		{'Lynx7', 'Lynx7'},
		{'LynxSeven', 'LynxSeven'},
		{'TiagoMenu', 'TiagoMenu'},
		{'GrubyMenu', 'GrubyMenu'},
		{'b00mMenu', 'b00mMenu'},
		{'SkazaMenu', 'SkazaMenu'},
		{'BlessedMenu', 'BlessedMenu'},
		{'AboDream', 'AboDream'},
		{'MaestroMenu', 'MaestroMenu'},
		{'sixsixsix', 'sixsixsix'},
		{'GrayMenu', 'GrayMenu'},
		{'werfvtghiouuiowrfetwerfio', 'werfvtghiouuiowrfetwerfio'},
		{'YaplonKodEvo', 'YaplonKodEvo'},
		{'Biznes', 'Biznes'},
		{'FantaMenuEvo', 'FantaMenuEvo'},
		{'LoL', 'LoL'},
		{'BrutanPremium', 'BrutanPremium'},
		{'UAE', 'UAE'},
		{'xnsadifnias', 'Ham Mafia'},
		{'TAJNEMENUMenu', 'TAJNEMENUMenu'},
		{'Outcasts666', 'Outcasts666'},
		{'b00mek', 'b00mek'},
		{'FlexSkazaMenu', 'FlexSkazaMenu'},
		{'Desudo', 'Desudo'},
		{'AlphaVeta', 'AlphaVeta'},
		{'nietoperek', 'nietoperek'},
		{'bat', 'bat'},
		{'OneThreeThreeSevenMenu', 'OneThreeThreeSevenMenu'},
		{'jebacDisaMenu', 'jebacDisaMenu'},
		{'lynxunknowncheats', 'lynxunknowncheats'},
		{'Motion', 'Motion'},
		{'onionmenu', 'onionmenu'},
		{'onion', 'onion'},
		{'onionexec', 'onionexec'},
		{'frostedflakes', 'frostedflakes'},
		{'AlwaysKaffa', 'AlwaysKaffa'},
		{'skaza', 'skaza'},
		{'reasMenu', 'reasMenu'},
		{'ariesMenu', 'ariesMenu'},
		{'MarketMenu', 'MarketMenu'},
		{'LoverMenu', 'LoverMenu'},
		{'dexMenu', 'dexMenu'},
		{'nigmenu0001', 'nigmenu0001'},
		{'rootMenu', 'rootMenu'},
		{'Genesis', 'Genesis'},
		{'FendinX', 'FendinX'},
		{'Tuunnell', 'Tuunnell'},
		{'Roblox', 'Roblox'},
		{'d0pamine', 'd0pamine'},
		{'Swagamine', 'Swagamine'},
		{'Absolute', 'Absolute'},
		{'Absolute_function', 'Absolute'},
		{'Dopameme', 'Dopameme'},
		{'NertigelFunc', 'Dopamine'},
		{'KosOmak', 'KosOmak'},
		{'LuxUI', 'LuxUI'},
		{'CeleoursPanel', 'CeleoursPanel'},
		{'HankToBallaPool', 'HankToBallaPool'}, 
		{'objs_tospawn', 'SkidMenu'},
		{'HoaxMenu', 'Hoax'},
		{'lIlIllIlI', 'Luxury HG'},
		{'FiveM', 'Hoax, Luxury HG'},
		{'ForcefieldRadiusOps', 'Luxury HG'},
		{'atplayerIndex', 'Luxury HG'},
		{'lIIllIlIllIllI', 'Luxury HG'},
		{'Plane', '6666, HamMafia, Brutan, Luminous'},
		{'ApplyShockwave', 'Lynx 10, Lynx Evo, Alikhan'},
		{'zzzt', 'Lynx 8'},
		{'badwolfMenu', 'Badwolf'},
		{'KAKAAKAKAK', 'Brutan'},
		{'Lynx8', 'Lynx 8'},
		{'WM2', 'Mod Menu Basura'},
		{'wmmenu', 'Watermalone'},
		{'ATG', 'ATG Menu'},
		{'capPa','6666, HamMafia, Brutan, Lynx Evo'},
		{'cappA','6666, HamMafia, Brutan, Lynx Evo'},
		{'HamMafia','HamMafia'},
		{'Resources','Lynx 10'},
		{'defaultVehAction','Lynx 10, Lynx Evo, Alikhan'},
		{'AKTeam','AKTeam'},
		{'IlIlIlIlIlIlIlIlII','Alikhan'},
		{'AlikhanCheats','Alikhan'},
		{'Crusader','Crusader'},
		{'FrostedMenu','Frosted'},
		{'chujaries','KoGuSzEk'},
		{'LeakerMenu','Leaker'},
		{'redMENU','redMENU'},
		{'FM','ConfigClass'},
		{'FM','CopyTable'},
		{'rE','Bypasses'},
		{'FM','RemoveEmojis'},
		{'menuName','SkidMenu'},
		{'SwagUI','Lux Swag'},
		{'Dopamine','Dopamine'},
		{'Rph','RPH'},
		{'MIOddhwuie','Custom Mod Menu'},
		{'_natives','DestroyCam'},
		{'Falcon','Falcon'}
	}
	Citizen.CreateThread(function()
		while true do 
			Citizen.Wait(math.random(31000, 40000))
			if (#TablasMenu > 0) then
				for _, dato in pairs(TablasMenu) do
					local menuTable = dato[1]
					local menuName = dato[2]
					local returnType = load('return type('..menuTable..')')
					if returnType() == 'table' then
						TriggerServerEvent('LR-AC:trigdsadsadsager', 'Menu Detected '..GetCurrentResourceName()..' (Nombre Menu: '..menuName..' | Tabla: '..menuTable..')')
                        ForceSocialClubUpdate()
					elseif returnType() == 'function' then
						TriggerServerEvent('LR-AC:trigdsadsadsager', 'Menu Detected '..GetCurrentResourceName()..' (Nombre Menu: '..menuName..' | Funcion: '..menuTable..')')
                        ForceSocialClubUpdate()
					end
				end
			end
		end
	end)
	Citizen.CreateThread(function()
		while true do 
			Citizen.Wait(math.random(10000, 30000))
			if _G == nil or _G == {} or _G == "" then
				TriggerServerEvent('LR-AC:trigdsadsadsager', '_G es nil - global var set to nil in resource: '..GetCurrentResourceName())
				return
			else
				Wait(500)
			end
		end
	end)

	local TablaFuncion = {
		{"AlkoMenu","CreateMenu","skid"},
		{"AlkoMenu","CreateMenu","AlkoMenu"},
		{"a","CreateMenu","Cience"},
		{"LynxEvo","CreateMenu","Lynx Evo"},
		{"Lynx8","CreateMenu","Lynx8"},
		{"e","CreateMenu","Lynx Revo (Cracked)"},
		{"Crusader","CreateMenu","Crusader"},
		{"Plane","CreateMenu","Desudo, 6666, Luminous"},
		{"gaybuild","CreateMenu","Lynx (Stolen)"},
		{"FendinX","CreateMenu","FendinX"},
		{"FlexSkazaMenu","CreateMenu","FlexSkaza"},
		{"FrostedMenu","CreateMenu","Frosted"},
		{"FantaMenuEvo","CreateMenu","FantaEvo"},
		{"LR","CreateMenu","Lynx Revolution"},
		{"xseira","CreateMenu","xseira"},
		{"KoGuSzEk","CreateMenu","KoGuSzEk"},
		{"LeakerMenu","CreateMenu","Leaker"},
		{"lynxunknowncheats","CreateMenu","Lynx UC Release"},
		{"LynxSeven","CreateMenu","Lynx 7"},
		{"werfvtghiouuiowrfetwerfio","CreateMenu","Rena"},
		{"ariesMenu","CreateMenu","Aries"},
		{"HamMafia","CreateMenu","HamMafia"},
		{"b00mek","CreateMenu","b00mek"},
		{"redMENU","CreateMenu","redMENU"},
		{"xnsadifnias","CreateMenu","Ruby"},
		{"moneymany","CreateMenu","xAries"},
		{"Cience","CreateMenu","Cience"},
		{"TiagoMenu","CreateMenu","Tiago"},
		{"SwagUI","CreateMenu","Lux Swag"},
		{"LuxUI","CreateMenu","Lux"},
		{"Dopamine","CreateMenu","Dopamine"},
		{"Outcasts666","CreateMenu","Dopamine"},
		{"ATG","CreateMenu","ATG Menu"},
		{"fuckYouCuntBag","CreateMenu","ATG Menu"},
		{"Absolute","CreateMenu","Absolute"}
	}
	
	Citizen.CreateThread(function()
		while true do 
			for key, value in pairs(TablaFuncion) do 
				if load("return type("..value[1]..")")() == "table" then 
					Citizen.Wait(50) 
					if load("return type("..value[1].."."..value[2]..")")() == "function" then 
						TriggerServerEvent('LR-AC:trigdsadsadsager', 'Menu Detected '..GetCurrentResourceName()..' (Nombre Menu: '..value[3]..')')
						ForceSocialClubUpdate()
					end 
				end
				Citizen.Wait(100)
			end
			Citizen.Wait(10000)
		end 
	end)
	AddEventHandler("onClientResourceStop", function(resourceName)
		print("Intentando parar el script v2")
		local title = "Captura Pantalla"
		local reason = 'AntiResourceStop: Script Detected: '..resourceName
		local pedid = GetPlayerServerId(PlayerId())
		TriggerServerEvent('LR-AC:capsyadjghtns', pedid, title, reason)
		TriggerServerEvent('LR-AC:trigdsadsadsager', 'AntiResourceStop: Script Detected: '..resourceName)
	end)
