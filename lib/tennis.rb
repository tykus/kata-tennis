class Tennis

  def initialize player1, player2
    @player1 = player1
    @player2 = player2
  end

  def score
    if @player1.points == 1 and @player2.points == 0
      return "Fifteen-Love"
    end
    if @player1.points == 2 and @player2.points == 0
      return "Thirty-Love"
    end
    return "Love-All"
  end
end
