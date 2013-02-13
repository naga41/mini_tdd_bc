class StatsManager
  def ranking(players)
    players.sort_by {|player| player.average}.reverse
  end
end
