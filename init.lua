--default overrides
if minetest.get_modpath("default") ~= nil then
  minetest.override_item("default:sandstone_block", {
  	tiles = {"default_sandstone.png",
    "extras_default_sandstone_block_bottom.png",
    "extras_default_sandstone_block_side.png",
    "extras_default_sandstone_block_side.png",
    "extras_default_sandstone_block_side.png",
    "extras_default_sandstone_block_side.png"},
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
