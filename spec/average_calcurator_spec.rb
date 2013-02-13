# coding: utf-8.rb
require File.dirname(__FILE__) + "/spec_helper"
require "average_calcurator"

describe AvarageCalcurator do
  describe "#calc" do
    let(:calcurator) { AvarageCalcurator.new }

    it "10打席、8打数、4安打の時、.500を返す" do
      calcurator.calc(10, 8, 4).should eq ".500"
    end

    it "10打席、10打数、4安打の時、.400を返す" do
      calcurator.calc(10, 10, 4).should eq ".400"
    end

    it "10000打席、10000打数、1234安打の時、.123を返す" do
      calcurator.calc(10000, 10000, 1234).should eq ".123"
    end

    it "10000打席、10000打数、1235安打の時、.124を返す" do
      calcurator.calc(10000, 10000, 1235).should eq ".124"
    end

    it "0打席、0打数、0安打の時、---を返す" do
      calcurator.calc(0, 0, 0).should eq "---"
    end

    it "10打席、1打数、0安打の時、.000を返す" do
      calcurator.calc(10, 1, 0).should eq ".000"
    end

    it "10打席、9打数、3安打の時、.333を返す" do
      calcurator.calc(10, 9, 3).should eq ".333"
    end

    it "10打席、10打数、10安打の時、1.00を返す" do
      calcurator.calc(10, 10, 10).should eq "1.00"
    end

    it "10打席、0打数、0安打の時、---を返す" do
      calcurator.calc(10, 0, 0).should eq "---"
    end
  end
end
