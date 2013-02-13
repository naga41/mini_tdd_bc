class BaseballPlayer
  def initialize(appearances, at_bat, hits)
    @appearances = appearances
    @at_bat      = at_bat
    @hits        = hits
  end

  def calc
    if @appearances == 0 || @at_bat == 0
      "---"
    elsif @hits == 0
      ".000"
    elsif @at_bat == @hits
      "1.00"
    else
      "." + "#{((@hits.to_f / @at_bat).round(3)*1000).to_i}"
    end
  end

  def ranking(players)
  end
end
