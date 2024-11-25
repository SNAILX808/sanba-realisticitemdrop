--   _____    _   __   ___       ____   __ 
--  / ___/   / | / /  /   |     /  _/  / / 
--  \__ \   /  |/ /  / /| |     / /   / /  
-- ___/ /  / /|  /  / ___ |   _/ /   / /___
--/____/  /_/ |_/  /_/  |_|  /___/  /_____/

config = {}

config.debug = false

-- Framework selection: Choose your preferred framework
config.framework = ''  -- 'qb' for QB-Core

-- Core name configuration: Ensure compatibility
config.corename = ''  -- 'qb-core' works for both ox_inventory and qb-inventory

-- Inventory system configuration: Select the inventory system you use
config.inventory = ''  -- 'ox_inventory' or 'qb-inventory'

-- Target interaction distance: Determines how close the player must be to interact
config.TargetDistance = 2  -- This setting is specifically for third-eye target systems like ox_target or qb-target

-- Item expiry time: Set the lifespan of dropped items in seconds
config.itemExpiryTime = 86400 * 2  -- Example: 1 day = 86400 seconds, 2 days = 86400 * 2, 5 days = 86400 * 5, etc.

-- Interaction system selection for optimal performance and features
-- For best performance, use 'ox_target' or 'qb-target'
config.interact = ''  -- option 1 = 'ox_target' -- option 2 = 'qb-target' -- option 3 = 'npmarker'

-- Each entry corresponds to a specific item, with its respective prop model and position/rotation data
config.itemprops = {
    ['weapon_pistol'] = {
        labelname = 'Pistol',
        prop = 'xm3_prop_xm3_pistol_xm3',  -- Prop model 
        pos = {x = 0.5, y = 0.0, z = 0.0},  -- Position offset
        rot = {x = 0.0, y = 0.0, z = 0.0},  -- Rotation for model 
    },
    ['weapon_appistol'] = {
        labelname = 'AP Pistol',
        prop = 'xm3_prop_xm3_pistol_xm3',  -- Prop model 
        pos = {x = 0.5, y = 0.0, z = 0.0},  -- Position offset
        rot = {x = 0.0, y = 0.0, z = 0.0},  -- Rotation for model 
    },
    ['burger'] = {
        labelname = 'Burger',
        prop = 'prop_food_bs_burg3',  -- Prop model 
        pos = {x = 0.5, y = 0.0, z = 0.0},  -- Position offset
        rot = {x = 0.0, y = 0.0, z = 0.0},  -- Rotation for model 
    },
    ['weapon_bat'] = {
        labelname = 'Bat',
        prop =  'p_cs_bbbat_01',
        pos = {x = 0.5, y = 0.0, z = 0.0},  -- Position offset
        rot = {x = 90.0, y = 0.0, z = 55.0},  -- Rotation for model 
    },
    ['armor'] = {
        labelname = 'Armor',
        prop = 'prop_armour_pickup',  -- Prop model
        pos = {x = 0.5, y = 0.0, z = 0.0},  -- Position offset
        rot = {x = 0.0, y = 0.0, z = 0.0},  -- Rotation for model
    },
    ['weapon_flashlight'] = {
        labelname = 'Flashlight',
        prop = 'prop_cs_police_torch',  -- Prop model
        pos = {x = 0.5, y = 0.0, z = 0.0},  -- Position offset
        rot = {x = 0.0, y = 0.0, z = 0.0},  -- Rotation for model
    },
    ['laptop'] = {
        labelname = 'Laptop',
        prop = 'xm_prop_x17_laptop_agent14_01',  -- Prop model
        pos = {x = 0.5, y = 0.0, z = 0.0},  -- Position offset
        rot = {x = 0.0, y = 0.0, z = 0.0},  -- Rotation for model
    },
    ['weapon_knife'] = {
        labelname = 'Knife',
        prop = 'prop_w_me_knife_01',  -- Prop model
        pos = {x = 0.5, y = 0.0, z = 0.0},  -- Position offset
        rot = {x = 0.0, y = 0.0, z = 0.0},  -- Rotation for model
    },
    ['goldbar'] = {
        labelname = 'Gold Bar',
        prop = 'hei_prop_heist_gold_bar',  -- Prop model
        pos = {x = 0.5, y = 0.0, z = 0.0},  -- Position offset
        rot = {x = 0.0, y = 0.0, z = 0.0},  -- Rotation for model
    },
    ['weapon_heavysniper'] = {
        labelname = 'Heavy Sniper',
        prop = 'w_sr_heavysniper',  -- Prop model
        pos = {x = 0.5, y = 0.0, z = 0.0},  -- Position offset
        rot = {x = 90.0, y = 0.0, z = 0.0},  -- Rotation for model
    },
    ['water'] = {
        labelname = 'Water',
        prop = 'vw_prop_casino_water_bottle_01a',  -- Prop model
        pos = {x = 0.5, y = 0.0, z = 0.0},  -- Position offset
        rot = {x = 0.0, y = 0.0, z = 0.0},  -- Rotation for model
    },
    ['beer'] = {
        labelname = 'Beer',
        prop = 'prop_cs_beer_bot_40oz_02',  -- Prop model
        pos = {x = 0.5, y = 0.0, z = 0.0},  -- Position offset
        rot = {x = 0.0, y = 0.0, z = 0.0},  -- Rotation for model
    },
}
