Cubes = { "red" => 12,
          "green" => 13,
          "blue" => 14}

def valid_game(line)
  get_max(line,"red") <= Cubes["red"] &&
    get_max(line,"green") <= Cubes["green"] &&
    get_max(line,"blue") <= Cubes["blue"]
end

def get_max(line, colour)
  line.scan(/\d+ #{colour}/).join.scan(/\d+/).map(&:to_i).max
end

def get_game(line)
  line.scan(/Game (\d+)/).flatten.first.to_i
end

input = IO.readlines("input.txt")
sum = 0
valid_games = input.select { |x| valid_game(x)}
pp valid_games.map {|x| get_game(x)}.inject(0) { | sum, n|  sum + n}
