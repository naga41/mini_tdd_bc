class BaseballTeam
  attr_reader :past_game_number
  attr_reader :regulation_at_bats

  def initialize(game_number)
    @past_game_number = game_number
    @regulation_at_bats = calc_regulation_at_bats(@past_game_number)
  end

  def calc_regulation_at_bats(game_number)
    (@past_game_number * 3.1).round
  end
end
