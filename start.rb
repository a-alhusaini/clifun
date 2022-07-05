require "./lib/helpers"
require "./lib/room"

ugly_room = Room.new(
  "ugly room",
  """There is a rotting troll corpse here.""",
  {}
)

scary_room = Room.new(
  "scary room",
  """There is a floating orb here. If you don't get out, it will probably do something bad to you.""",
  {}
)

fancy_room = Room.new(
  "fancy room",
  """This room has a golden chair""",
  {}
)

ugly_room.paths = { "north" => scary_room, "south" => fancy_room }
fancy_room.paths = { "north" => ugly_room }

ugly_room.start_room_loop
