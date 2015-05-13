require 'player'

describe Player do
  before do
    @player = Player.new "John McEnroe"
  end

  it "has 0 points when initialized" do
    expect(@player.points).to eq(0)
  end

  it "increases its points by one when it wins a point" do
    @player.wins_point
    expect(@player.points).to eq(1)
  end

  it "has a string representation" do
    expect(@player.to_s).to eq("#{@player.name} has 0 points.")
  end

end
