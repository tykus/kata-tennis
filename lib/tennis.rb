class Tennis

  SCORING = ['Love','Fifteen','Thirty','Forty']

  def initialize player1, player2
    @player1 = player1
    @player2 = player2
  end

  def score

    return "Win for #{winning_player.name}" if has_been_won

    score = "#{SCORING[@player1.points]}-"
    if tied
      score += "All"
    else
      score += "#{SCORING[@player2.points]}"
    end

    return score
  end

  def has_been_won
    [@player1.points, @player2.points].max >= 4 and (@player1.points - @player2.points).abs >= 2
  end

  def winning_player
    if @player1.points > @player2.points
      return @player1
    elsif @player1.points < @player2.points
      return @player2
    end
  end

  def points_played
    @player1.points + @player2.points
  end

  def tied
    @player1.points == @player2.points
  end

  private :points_played, :tied, :has_been_won, :winning_player
end
