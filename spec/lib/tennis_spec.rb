require 'tennis'
require 'player'

describe Tennis do

  before do
    @player1 = Player.new "Andy Murray"
    @player2 = Player.new "Novak Jokovic"

    @game = Tennis.new @player1, @player2
  end

  it 'is initialized with 2 player objects' do
    expect(@player1.class).to eq(Player)
    expect(@player2.class).to eq(Player)
  end

  it 'scores a scoreless game' do
    expect(@game.score).to eq('Love-All')
  end

  it 'scores a 1-0 game' do
    @player1.wins_point
    expect(@game.score).to eq('Fifteen-Love')
  end

end
