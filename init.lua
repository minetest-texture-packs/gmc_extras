local sandstone_block = {
  "default_sandstone.png",
  "extras_default_sandstone_block_bottom.png",
  "extras_default_sandstone_block_side.png",
  "extras_default_sandstone_block_side.png",
  "extras_default_sandstone_block_side.png",
  "extras_default_sandstone_block_side.png"
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

--default overrides
if minetest.get_modpath("default") ~= nil then
--  default.gui_slots = "listcolors[#00000033;#5A5A5A;#FFFFFF00;#0C021A99;#FFFFFF]"
  
  minetest.override_item("default:sandstone_block", { tiles = sandstone_block })
  if os.date("%m") == "12" then
    minetest.override_item("default:chest", { tiles = default_chest_christmas })
    minetest.override_item("default:chest_lock", { tiles = default_chest_lock_christmas })
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