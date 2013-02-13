class BaseballPlayer
  attr_reader :average

  def initialize(appearances, at_bat, hits)
    @appearances = appearances
    @at_bat      = at_bat
    @hits        = hits
    @average     = calc_average
  end

  def formated_average
    if @average == -1
      "---"
    elsif @average == 0
      ".000"
    elsif @average == 1
      "1.00"
    else
      "." + "#{(@average*1000).to_i}"
    end
  end

  def ranking(players)
  end

  private
  def calc_average
    if @at_bat == 0 || @appearances == 0
      -1
    else
      (@hits.to_f / @at_bat).round(3)
    end
  end

end
