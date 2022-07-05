class Room
  attr_accessor :name, :paths, :description

  def initialize name, description, paths
    @name = name
    @description = description
    @paths = paths
  end

  def give_details
    puts """
    You are in a #{@name}.
      #{@description}
    """
  end

  def get_exits
    sentence = "You can go "
    paths.keys.each do |key|
      sentence += "#{key} "
    end

    if paths.empty?
      sentence = ""
    end

    sentence
  end

  def action
    puts "No action implemented for this room"
    true
  end

  def go direction
    paths[direction].start_room_loop
  end

  def start_room_loop
    give_details
    if action
      Helpers.prompt_for_direction self
    end
  end
end
