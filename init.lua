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

--default overrides
if minetest.get_modpath("default") ~= nil then
  minetest.override_item("default:sandstone_block", {
  	tiles = sandstone_block
  })
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
  minetest.override_item("farming:straw", {
  	tiles = farming_straw
  })
end

--stairs overrides
if minetest.get_modpath("stairs") ~= nil then
  minetest.override_item("stairs:slab_sandstone_block", {
  	tiles = sandstone_block
  })
  minetest.override_item("stairs:stair_sandstone_block", {
  	tiles = sandstone_block
  })
  minetest.override_item("stairs:slab_straw", {
  	tiles = farming_straw
  })
  minetest.override_item("stairs:stair_straw", {
  	tiles = farming_straw
  })
end