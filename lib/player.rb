class Player

  attr_reader :name, :points

  def initialize(name)
    @name = name
    @points = 0
  end

  def wins_point
    @points += 1
  end
end
