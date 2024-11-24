# Sanba Realistic Item Drop

A FiveM resource for adding a realistic item drop system to your server.

### Installation Steps

1. **Download the Resource**
   - Download the latest version from the [Keymaster](https://keymaster.fivem.net/)

2. **Extract the Files**
   - Extract the downloaded `.zip` file.
   - Move the folder `sanba-realisticitemdrop` to your server's `resources` directory.

3. **Configuration**
   - Open `config.lua` or `no_escrow.lua` to customize the settings, such as:
     - Notifications.
     - Animation settings.
     - Update settings to match your server's requirements.

## Integration with QBCore Inventory

To enable realistic item drop functionality, follow the step below:

### Step 1: Add the Code

1. Open **`qb-inventory/server/main.lua`**.
2. Locate the callback `qb-inventory:server:createDrop` where item drops are handled.
3. Add the following line inside the item drop logic:  Your code should look something like this -> `https://imgur.com/a/MmaPd2E`

   ```lua
   local itemName, itemCount, itemMetadata = item.name, item.amount, item.info

   local Normaldrop = exports['sanba-realisticitemdrop']:sanbarealisticdrop(source, data, itemName, itemCount, itemMetadata)

   if Normaldrop then
       return
   end



## Integration with OX Inventory

To enable realistic item drop functionality, follow the step below:

### Step 1: Add the Code

1. Open **`ox_inventory/modules/inventory/server.lua`**.
2. Locate the Function `local function dropItem` where item drops are handled.
3. Add the following line inside the item drop logic:  Your code should look something like this -> `https://imgur.com/Eu5cj9g`

   ```lua
	local itemName, itemCount, itemMetadata = toData.name, toData.count, toData.metadata

	local Normaldrop = exports['sanba-realisticitemdrop']:sanbarealisticdrop(source, data, itemName, itemCount, itemMetadata)

	if Normaldrop then
	    return
	end


## Create the Database Table

1. Open your database management tool (e.g., phpMyAdmin, HeidiSQL, or MySQL Workbench).
2. Execute the following SQL query to create the required table for dropped items:

    ```sql
    CREATE TABLE `dropped_items` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `unique_id` VARCHAR(36) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
    `itemName` VARCHAR(255) NOT NULL COLLATE 'utf8mb3_general_ci',
    `itemCount` INT(11) NOT NULL,
    `itemMetadata` TEXT NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
    `position` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_bin',
    `created_at` DATETIME NOT NULL,
    `expiry_time` DATETIME NOT NULL,
    `spawned` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `unique_id` (`unique_id`) USING BTREE,
    CONSTRAINT `position` CHECK (json_valid(`position`))
    )
    COLLATE='utf8mb3_general_ci'
    ENGINE=InnoDB
    AUTO_INCREMENT=2378;


   
