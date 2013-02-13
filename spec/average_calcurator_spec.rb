# coding: utf-8.rb
require File.dirname(__FILE__) + "/spec_helper"
require "average_calcurator"

describe AvarageCalcurator do
  describe "#calc" do
    let(:calcurator) { AvarageCalcurator.new }

    it "10打席、8打数、4安打の時、0.5を返す" do
      calcurator.calc(10, 8, 4).should eq 0.5
    end

    it "10打席、10打数、4安打の時、0.4を返す" do
      calcurator.calc(10, 10, 4).should eq 0.4
    end

    it "10000打席、10000打数、1234安打の時、0.123を返す" do
      calcurator.calc(10000, 10000, 1234).should eq 0.123
    end

    it "10000打席、10000打数、1235安打の時、0.124を返す" do
      calcurator.calc(10000, 10000, 1235).should eq 0.124
    end

    it "0打席、0打数、0安打の時、nilを返す" do
      calcurator.calc(0, 0, 0).should eq nil
    end

    it "10打席、0打数、0安打の時、0.000を返す" do
      calcurator.calc(10, 0, 0).should eq 0.000
    end
  end
end
