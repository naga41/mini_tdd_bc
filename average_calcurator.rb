class AvarageCalcurator
  def calc(appearances, at_bat, hits)
    if appearances == 0 || at_bat == 0
      "---"
    elsif hits == 0
      ".000"
    elsif at_bat == hits
      "1.00"
    else
      "." + "#{((hits.to_f / at_bat).round(3)*1000).to_i}"
    end
  end
end
