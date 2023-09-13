class Robot
  def return_to_origin?(commands)
    x = 0
    y = 0

    direction = "n"

    map_direction = {
      "n" => [0, 1],
      "s" => [0, -1],
      "e" => [1, 0],
      "w" => [-1, 0]
    }

    # when G move whatever the map direction currently is

    commands.each_char do |command|
      case command
      when "G"
        x += map_direction[direction][0]
        y += map_direction[direction][1]

      when "L"
        case direction
        when "n"
          direction = "w"
        when "e"
          direction = "n"
        when "s"
          direction = "e"
        when "w"
          direction = "s"
        end

      when "R"
        case direction
        when "n"
          direction = "e"
        when "e"
          direction = "s"
        when "s"
          direction = "w"
        when "w"
          direction = "n"
        end
      end
    end
    x == 0 && y == 0
  end
end
