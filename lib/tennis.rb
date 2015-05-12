class Tennis

  SCORING = ['Love','Fifteen','Thirty','Forty']

  def initialize player1, player2
    @player1 = player1
    @player2 = player2
  end

  def score

    if points_played > 0
      score = "#{SCORING[@player1.points]}-#{SCORING[@player2.points]}"
    else
      score ="Love-All"
    end

    return score

  end

  def points_played
    @player1.points + @player2.points
  end

  private :points_played
end
