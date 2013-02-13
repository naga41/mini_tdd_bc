# coding: utf-8.rb
require File.dirname(__FILE__) + "/spec_helper"
require "baseball_team"

describe BaseballTeam do
  describe "game_past" do
    it "100試合消化している" do
      BaseballTeam.new(100).past_game_number.should eq 100
    end
    it "100試合消化している場合、規定打席数は310打席である" do
      BaseballTeam.new(100).regulation_at_bats.should eq 310
    end
    it "5試合消化している場合、規定打席数は16打席である" do
      BaseballTeam.new(5).regulation_at_bats.should eq 16
    end
    it "4試合消化している場合、規定打席数は12打席である" do
      BaseballTeam.new(4).regulation_at_bats.should eq 12
    end
  end
end
