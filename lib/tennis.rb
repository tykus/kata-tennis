class Tennis

  SCORING = ['Love','Fifteen','Thirty','Forty']

  def initialize player1, player2
    @player1 = player1
    @player2 = player2
  end

  def score
    case
    when has_been_won?
      return "Game #{winning_player.name}"
    when (players_have_won_at_least_3_points and tied?)
      return "Deuce"
    when (players_have_won_at_least_3_points and player_leads_by_one_point?)
      return "Advantage #{winning_player.name}"
    else
      return general_scoring_format
    end
  end

  def has_been_won?
    player_scores_at_least_4_points? and player_leads_by_2_or_more_points?
  end

  private

    def general_scoring_format
      score = "#{SCORING[@player1.points]}-"
      score += tied? ? "All" : "#{SCORING[@player2.points]}"
    end

    def players_have_won_at_least_3_points
      @player1.points >= 3 and @player2.points >= 3
    end

    def player_scores_at_least_4_points?
      [@player1.points, @player2.points].max >= 4
    end

    def player_leads_by_one_point?
      (@player1.points - @player2.points).abs == 1
    end

    def player_leads_by_2_or_more_points?
      (@player1.points - @player2.points).abs >= 2
    end

    def winning_player
      players = [@player1,@player2].sort
      players[0]
    end

    def points_played
      @player1.points + @player2.points
    end

    def tied?
      @player1.points == @player2.points
    end

end
