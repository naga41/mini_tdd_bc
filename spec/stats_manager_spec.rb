# coding: utf-8.rb
require File.dirname(__FILE__) + "/spec_helper"
require "stats_manager"
require "baseball_player"

describe StatsManager do
  describe "ranking" do
    it "選手のリストを受け取り、打率の順位を返す" do
      ebis = BaseballPlayer.new(10, 10, 10)
      ktwk = BaseballPlayer.new(10, 10, 5)
      ngt  = BaseballPlayer.new(0, 0, 0)
      nskw = BaseballPlayer.new(10, 0, 0)

      stats_manager = StatsManager.new
      stats_manager.ranking([ebis, ktwk, ngt, nskw]).should eq [ebis, ktwk, nskw, ngt]
    end
  end
end
