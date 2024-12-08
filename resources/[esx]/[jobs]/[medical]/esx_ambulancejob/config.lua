Config                            = {}

Config.DrawDistance               = 100.0

Config.Marker                     = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, rotate = false } -- pillbox

Config.ReviveReward               = 550  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- enable anti-combat logging?
Config.LoadIpl                    = false -- disable if you're using fivem-ipl or other IPL loaders

Config.Locale                     = 'en'

local second = 1000
local minute = 60 * second

Config.EarlyRespawnTimer          = 4 * minute  -- Time til respawn is available
Config.BleedoutTimer              = 8 * minute -- Time til the player bleeds out

Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false

Config.RemoveWeaponsAfterRPDeath  = true
Config.RemoveCashAfterRPDeath     = true
Config.RemoveItemsAfterRPDeath    = true

-- Let the player pay for respawning early, only if he can afford it.
Config.EarlyRespawnFine           = true
Config.EarlyRespawnFineAmount     = 1000

Config.RespawnPoint = { coords = vector3(297.11, -586.58, 43.26), heading = 93.42} -- pillbox

Config.Hospitals = {

	CentralLosSantos = {

		Blip = {
			coords = vector3( 302.98, -585.88, 42.28), --pillbox
			sprite = 61,
			scale  = 1.2,
			color  = 2
		},

		AmbulanceActions = {
			vector3(335.7, -593.44, 42.28)
		},

		Pharmacies = {
			vector3(310.17, -568.39, 42.28) --pillbox
		},

		Vehicles = {
			{
				Spawner = vector3(359.26, -588.13, 28.81), --pillbox
				InsideShop = vector3(289.532,-584.539, 42.832), --pillbox
				Marker = { type = 36, x = 1.0, y = 1.0, z = 1.0, r = 100, g = 50, b = 200, a = 100, rotate = true },
				SpawnPoints = { -- all pillbox
					{ coords = vector3(365.92, -592.16, 28.7), heading = 157.01, radius = 4.0 }, 
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(350.19, -600.94, 74.17),
				InsideShop = vector3(305.6, -1419.7, 41.5),
				Marker = { type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(350.92, -588.15, 74.17), heading = 247.52, radius = 10.0 },
				}
			}
		},

		FastTravels = {
			
		},

		FastTravelsPrompt = {
--Roof
			{
				From = vector3(327.07, -603.86, 42.28),
				To = { coords = vector3(338.77, -583.97, 74.17), heading = 243.79 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false },
				Prompt = _U('fast_travel')
			},

			{
				From = vector3(338.77, -583.97, 73.1),
				To = { coords = vector3(327.07, -603.86, 42.28), heading = 0.0 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false },
				Prompt = _U('fast_travel')
			},
-- Back
			{
				From = vector3(330.21, -601.12, 42.28),
				To = { coords = vector3(359.73, -584.99, 28.82), heading = 246.49 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false },
				Prompt = _U('fast_travel')
			},

			{
				From = vector3(359.73, -584.99, 27.82),
				To = { coords = vector3(330.21, -601.12, 43.28), heading = 70.44 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false },
				Prompt = _U('fast_travel')
			},
-- tunnel
			{
				From = vector3(332.43, -595.65, 42.28),
				To = { coords = vector3(338.91, -584.36, 17.76), heading = 96.33 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false },
				Prompt = _U('fast_travel')
			},

			{
				From = vector3(338.91, -584.36, 16.76),
				To = { coords = vector3(332.43, -595.65, 43.28), heading = 70.66 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false },
				Prompt = _U('fast_travel')
			}
		}

	}
}

Config.AuthorizedVehicles = {

    ambulance = {

    },

	doctor = {
	  
	},


	chief_doctor = {
		 
	},


	boss = {
		{model = 'dodgesamu', label = 'Medic Dodge', price = 10}
	},

}

Config.AuthorizedHelicopters = {

	ambulance = {},

	doctor = {
		
	},

	chief_doctor = {
		
	},

	boss = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 10 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 10 }
	}

}
