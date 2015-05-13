class Tennis

  SCORING = ['Love','Fifteen','Thirty','Forty']

  def initialize player1, player2
    @player1 = player1
    @player2 = player2
  end

  def score

    return "Win for #{winning_player.name}" if has_been_won?

    return "Deuce" if tied? and points_played >= 6

    score = "#{SCORING[@player1.points]}-"
    if tied?
      score += "All"
    else
      score += "#{SCORING[@player2.points]}"
    end

    return score
  end

  private

    def has_been_won?
      player_scores_at_least_4_points? and player_leads_by_2_or_more_points?
    end

    def player_scores_at_least_4_points?
      [@player1.points, @player2.points].max >= 4
    end

    def player_leads_by_2_or_more_points?
      (@player1.points - @player2.points).abs >= 2
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

    def tied?
      @player1.points == @player2.points
    end

end
