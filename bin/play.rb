require_relative '../lib/tennis'
require_relative '../lib/player'

john = Player.new "John McEnroe"
jimmy = Player.new "Jimmy Connors"
game = Tennis.new john, jimmy

players = [john,jimmy]

until game.has_been_won? do
  players.sample.wins_point
  puts game.score
end
