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

  it "scores a scoreless game 'Love-All'" do
    expect(@game.score).to eq('Love-All')
  end

  it "scores a 1-0 game 'Fifteen-Love'" do
    @player1.wins_point
    expect(@game.score).to eq('Fifteen-Love')
  end

  it "scores a 2-0 game 'Thirty-Love'" do
    2.times { @player1.wins_point }
    expect(@game.score).to eq('Thirty-Love')
  end

  it "scores a 3-0 game 'Forty-Love'" do
    3.times { @player1.wins_point }
    expect(@game.score).to eq('Forty-Love')
  end

  it "scores a 4-0 game 'Win'" do
    4.times { @player1.wins_point }
    expect(@game.score).to eq("Win for #{@player1.name}")
  end

  it "scores a 1-1 game 'Fifteen-All'" do
    @player1.wins_point
    @player2.wins_point
    expect(@game.score).to eq('Fifteen-All')
  end

  it "scores a 2-2 game 'Thirty-All'" do
    2.times { @player1.wins_point }
    2.times { @player2.wins_point }
    expect(@game.score).to eq('Thirty-All')
  end

  it "scores a 3-3 game 'Deuce'" do
    3.times { @player1.wins_point }
    3.times { @player2.wins_point }
    expect(@game.score).to eq('Deuce')
  end

  it "scores a 5-5 game 'Deuce'" do
    5.times { @player1.wins_point }
    5.times { @player2.wins_point }
    expect(@game.score).to eq('Deuce')
  end

  it "scores a 5-3 game 'Win'" do
    5.times { @player1.wins_point }
    3.times { @player2.wins_point }
    expect(@game.score).to eq("Win for #{@player1.name}")
  end



end
