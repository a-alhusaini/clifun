module Helpers
  def self.prompt_for_direction room
    room_table = {}
    option_number = 1

    if room.paths == {}
      return
    end

    room.paths.each do |path|
      direction_name = path[0]
      room_table[option_number.to_s] = direction_name
      option_number += 1
    end

    puts "Which direction would you like to go?"

    room_table.each do |room|
      room_number = room[0]
      room_direction = room[1]
      puts "  #{room_number}) #{room_direction}"
    end

    desired_direction = gets.chomp

    room.go room_table[desired_direction]
  end
end
