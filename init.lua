local gmc_extras = {
  grassy_sides = minetest.setting_getbool("gmc_extras_grassy_sides") or false,
}

local sandstone_block = {
  "default_sandstone.png",
  "extras_default_sandstone_block_bottom.png",
  "extras_default_sandstone_block_side.png",
  "extras_default_sandstone_block_side.png",
  "extras_default_sandstone_block_side.png",
  "extras_default_sandstone_block_side.png"
}

local dirt_with_grass_grassy = {
  "default_grass.png",
  "default_dirt.png",
  "default_grass.png",
  "default_grass.png",
  "default_grass.png",
  "default_grass.png",
}

local dirt_with_dry_grass_grassy = {
  "default_dry_grass.png",
  "default_dirt.png",
  "default_dry_grass.png",
  "default_dry_grass.png",
  "default_dry_grass.png",
  "default_dry_grass.png",
}

local farming_straw = {
  "extras_farming_straw_top_bottom.png",
  "extras_farming_straw_top_bottom.png",
  "farming_straw.png",
  "farming_straw.png",
  "farming_straw.png",
  "farming_straw.png"
}

local slab_stone_block = {
  "extras_slab_stone_block_top_bottom.png",
  "extras_slab_stone_block_top_bottom.png",
  "extras_slab_stone_block_side.png",
  "extras_slab_stone_block_side.png",
  "extras_slab_stone_block_side.png",
  "extras_slab_stone_block_side.png"
}

local default_chest_christmas = {
  "extras_default_chest_christmas_top.png",
  "extras_default_chest_christmas_bottom.png",
  "extras_default_chest_christmas_side.png",
  "extras_default_chest_christmas_side.png",
  "extras_default_chest_christmas_side.png",
  "extras_default_chest_christmas_front.png"
}

local default_chest_lock_christmas = {
  "extras_default_chest_christmas_top.png",
  "extras_default_chest_christmas_bottom.png",
  "extras_default_chest_christmas_side.png",
  "extras_default_chest_christmas_side.png",
  "extras_default_chest_christmas_side.png",
  "extras_default_chest_lock_christmas_front.png"
}

local anvil_anvil = {
  "extras_anvil_base.png"
}

--default overrides
if minetest.get_modpath("default") ~= nil then
--  default.gui_slots = "listcolors[#00000033;#5A5A5A;#FFFFFF00;#0C021A99;#FFFFFF]"
  
  minetest.override_item("default:sandstone_block", { tiles = sandstone_block })
  if os.date("%m") == "12" then
    minetest.override_item("default:chest", { tiles = default_chest_christmas })
    minetest.override_item("default:chest_lock", { tiles = default_chest_lock_christmas })
  end
  if gmc_extras.grassy_sides == true then
    minetest.override_item("default:dirt_with_grass", { tiles = dirt_with_grass_grassy })
    minetest.override_item("default:dirt_with_dry_grass", { tiles = dirt_with_dry_grass_grassy })
  end
end

--bed overrides 
if minetest.get_modpath("beds") ~= nil then
  minetest.register_craft({
    output = "beds:bed",
  	recipe = {
  		{"wool:green", "wool:green", "wool:white"},
  		{"group:wood", "group:wood", "group:wood"}
  	},
  })
end

--farming overrides
if minetest.get_modpath("farming") ~= nil then
  minetest.override_item("farming:straw", { tiles = farming_straw })
end

--stairs overrides
if minetest.get_modpath("stairs") ~= nil then
  minetest.override_item("stairs:slab_stone_block", { tiles = slab_stone_block })
  minetest.override_item("stairs:slab_sandstone_block", { tiles = sandstone_block })
  minetest.override_item("stairs:stair_sandstone_block", { tiles = sandstone_block })
  minetest.override_item("stairs:slab_straw", { tiles = farming_straw })
  minetest.override_item("stairs:stair_straw", { tiles = farming_straw })
end

if minetest.get_modpath("carts") ~= nil then
  minetest.override_item("carts:cart", { inventory_image = "extras_carts_cart_inv.png" })
end

if minetest.get_modpath("anvil") ~= nil then
  anvil_item_displacement = 13/16
  minetest.override_item("anvil:anvil", {
    tiles = anvil_anvil,
  	node_box = {
  		type = "fixed",
  		fixed = {
  			{-0.375, -0.5, -0.375, 0.375, -0.25, 0.375}, -- Base
  			{-0.3125, -0.5, -0.25, 0.3125, -0.1875, 0.25}, -- PoleBase
  			{-0.25, -0.1875, -0.125, 0.25, 0.125, 0.125}, -- Pole
  			{-0.5, 0.125, -0.3125, 0.5, 0.5, 0.3125}, -- Block
  		}
  	},
  	selection_box = {
  		type = "fixed",
  		fixed = {
  			{-0.375, -0.5, -0.375, 0.375, -0.25, 0.375}, -- Base
  			{-0.3125, -0.5, -0.25, 0.3125, -0.1875, 0.25}, -- PoleBase
  			{-0.25, -0.1875, -0.125, 0.25, 0.125, 0.125}, -- Pole
  			{-0.5, 0.125, -0.3125, 0.5, 0.5, 0.3125}, -- Block
  		}
  	}, 
  })
end
if minetest.get_modpath("itemframes") ~= nil then
  minetest.override_item("itemframes:frame", {	inventory_image = "extras_itemframes_inv.png" })
end