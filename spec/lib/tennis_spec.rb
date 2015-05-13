require 'tennis'
require 'player'

describe Tennis do

  before do
    @player1 = Player.new 'Andy Murray'
    @player2 = Player.new 'Novak Jokovic'

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

  it 'scores a 2-0 game' do
    2.times { @player1.wins_point }
    expect(@game.score).to eq('Thirty-Love')
  end

  it 'scores a 3-0 game' do
    3.times { @player1.wins_point }
    expect(@game.score).to eq('Forty-Love')
  end

  it 'scores a 4-0 game' do
    4.times { @player1.wins_point }
    expect(@game.score).to eq("Win for #{@player1.name}")
  end

  it 'scores a 1-1 game' do
    @player1.wins_point
    @player2.wins_point
    expect(@game.score).to eq('Fifteen-All')
  end

  it 'scores a 2-2 game' do
    2.times { @player1.wins_point }
    2.times { @player2.wins_point }
    expect(@game.score).to eq('Thirty-All')
  end

end
