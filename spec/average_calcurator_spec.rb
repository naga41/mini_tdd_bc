# coding: utf-8.rb
require File.dirname(__FILE__) + "/spec_helper"
require "average_calcurator"

describe BaseballPlayer do
  describe "formated_average" do
    let(:player) { BaseballPlayer.new }

    it "10打席、8打数、4安打の時、.500を返す" do
      BaseballPlayer.new(10, 8, 4).formated_average.should eq ".500"
    end

    it "10打席、10打数、4安打の時、.400を返す" do
      BaseballPlayer.new(10, 10, 4).formated_average.should eq ".400"
    end

    it "10000打席、10000打数、1234安打の時、.123を返す" do
      BaseballPlayer.new(10000, 10000, 1234).formated_average.should eq ".123"
    end

    it "10000打席、10000打数、1235安打の時、.124を返す" do
      BaseballPlayer.new(10000, 10000, 1235).formated_average.should eq ".124"
    end

    it "0打席、0打数、0安打の時、---を返す" do
      BaseballPlayer.new(0, 0, 0).formated_average.should eq "---"
    end

    it "10打席、1打数、0安打の時、.000を返す" do
      BaseballPlayer.new(10, 1, 0).formated_average.should eq ".000"
    end

    it "10打席、9打数、3安打の時、.333を返す" do
      BaseballPlayer.new(10, 9, 3).formated_average.should eq ".333"
    end

    it "10打席、10打数、10安打の時、1.00を返す" do
      BaseballPlayer.new(10, 10, 10).formated_average.should eq "1.00"
    end

    it "10打席、0打数、0安打の時、---を返す" do
      BaseballPlayer.new(10, 0, 0).formated_average.should eq "---"
    end
  end

  describe "calc_average" do
    it "10打席、10打数、0安打の時、0.000を返す" do
      BaseballPlayer.new(10, 10, 0).calc_average.should eq 0.000
    end

    it "10打席、0打数、0安打の時、-1を返す" do
      BaseballPlayer.new(10, 0, 0).calc_average.should eq -1
    end

    it "10打席、5打数、1安打の時、0.200を返す" do
      BaseballPlayer.new(10, 5, 1).calc_average.should eq 0.200
    end
  end
    # it "選手のリストを受け取り、打率の順位を返す" do
    #   ebis = BaseballPlayer.new(10, 10, 10)
    #   ktwk = BaseballPlayer.new(10, 10, 5)
    #   ngt  = BaseballPlayer.new(0, 0, 0)
    #   nskw = BaseballPlayer.new(10, 0, 0)
    #   player.ranking([ebis, ktwk, ngt, nskw]).should eq ["ebis", "ktwk", "nskw", "ngt"]
    # end
end
