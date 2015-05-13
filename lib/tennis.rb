class Tennis

  SCORING = ['Love','Fifteen','Thirty','Forty']

  def initialize player1, player2
    @player1 = player1
    @player2 = player2
  end

  def score

    score = "#{SCORING[@player1.points]}-"
    if tied
      score += "All"
    else
      score += "#{SCORING[@player2.points]}"
    end

    return score

  end

  def points_played
    @player1.points + @player2.points
  end

  def tied
    @player1.points == @player2.points
  end

  private :points_played, :tied
end
