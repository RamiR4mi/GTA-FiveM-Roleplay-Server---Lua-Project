TriggerEvent("esx:getSharedObject", function(obj) ESX = obj; end)

AuthorizedItems = {
  aclskey            = "ACLS Chipkarte",
  lspdkey            = "LSPD Chipkarte",
  lsmdkey            = "LSMD Chipkarte",
  fibkey             = "FIB Chipkarte",
  dojkey             = "DoJ Chipkarte",
  uskey              = "U.S Chipkarte",
  usmskey            = "U.S. Marshal Chipkarte",
}

-- Minigame Presets
Minigames = {
  ['Hacking'] = {
    item = 'hacking_laptop',
    options = {
      time        = {min = 10, max = 60, step = 2},
      letters     = {min = 02, max = 10, step = 1},
    }
  },
  ['Lockpick'] = {
    item = 'lockpick',
    options = {
      pins        = {min = 02, max = 15, step = 1},
    }
  },
  -- Uncomment minigames that you own/want to use.
  --[[
  ['LockpickV2'] = {
    item = 'lockpickv2'
  },
  ['Thermite'] = {
    item = 'thermite',
    options = {      
      difficulty   = {min = 0.1, max = 1.0, step = 0.1},
      speed_scale  = {min = 0.1, max = 2.0, step = 0.1},
      score_inc    = {min = 0.1, max = 1.0, step = 0.1},
    }
  },  
  ]]
}

-- Translate here.
Labels = {
  unlock            = "🔒",
  lock              = "🔓",
  do_unlock         = "",
  do_lock           = "",
  access_granted    = "~o~Chipkarte:~s~ ~g~Gültig~s~",
  access_denied     = "~o~Chipkarte:~s~ ~r~Ungültig~s~",
  key_shop_3dtxt    = "[~g~E~s~] Key Shop",
  key_shop_helptxt  = "~INPUT_PICKUP~ Key Shop",
  key_shop_bliptxt  = "Key Shop",
  no_bank_acc       = "Could not find bank account.",
  police_warning    = "Somebody is attempting to break into a door at %s. \nPress ~INPUT_PICKUP~ to set GPS."
}
   
Controls = {
  TextOffset = {
    ["height"] = {
      codes = {81,82},
      text = "Height -/+",
    },
    ["forward"] = {
      codes = {172,173},
      text = "Forward/Back",
    },
    ["right"] = {
      codes = {174,175},
      text = "Right/Left",
    },
    ["done"] = {
      codes = {191},
      text = "Done",
    },
  },
}

Config = {  
  -- ESX bank account name.
  BankAccountName = "bank",

  -- Warn police when a minigame/break in attempt has failed?
  WarnPoliceOnFail = false,

  -- Warn police wehn a minigame/break in attempt has succeeded?
  WarnPoliceOnSuccess = false,

  -- How long should we give the police to react to said notification? (Seconds).
  PoliceNotifyTimer = 15,

  -- Jobs to notify with above interactions.
  PoliceJobs = {},

  -- These jobs can access any door that allows raid access.
  RaidAccess = {},

  -- Chunking effects MS usage with lots of doors.
  Chunking = {
    -- The acceptable range for doors to be considered for primary chunk.
    -- Reduce range to reduce MS.
    range     = 50.0,

    -- Timer: the time between re-chunks.
    -- Increase timer to reduce MS but also reduce overall "responsiveness" of mod.
    timer     = 5000,

    -- Movement: distance before chunking is reconsidered (overwriting timer).
    -- Increase movement to reduce MS, but too a high a value may cause unforseen effects with player teleportation.
    movement  = 50.0,
  },

  Shops = {
    -- Wouldn't use more then a few shops personally. Try your luck though.
  },

  Doors = {
  }
}

mLibs = exports["meta_libs"]