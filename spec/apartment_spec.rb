require 'spec_helper'

describe Apartment do


  let (:apartment) {Apartment.new("11 Mass Ave", "Boston", "02115", "$1,500", "11/1/2015", "12/1/2015")}
  let (:unit) {Occupant.new("tali", "koss")}
  describe ".new"  do
    it 'should be a Apartment class' do
      expect(apartment).to be_a(Apartment)
    end

    it "takes asking price as an argument" do

      expect(apartment.rent_price).to eq("$1,500")
    end

    it 'takes address as an argument' do
      expect(apartment.address).to eq("11 Mass Ave")
    end

    it 'takes city or town as an argument' do
      expect(apartment.city_or_town).to eq("Boston")
    end

    it 'takes zip as an argument' do
      expect(apartment.zip_code).to eq("02115")
    end

    it 'takes lease_start as an argument' do
      expect(apartment.lease_start).to eq("11/1/2015")
    end

    it 'takes lease_end as an argument' do
      expect(apartment.lease_end).to eq("12/1/2015")
    end

  end

  describe "#full?" do
    it "should check if apartment is vacant or not" do
      apartment.add(unit)
      apartment.add(unit)
      apartment.add(unit)
      apartment.add(unit)

      expect(apartment.full?).to eq(true)
    end

    it "should check if apartment is vacant or not" do
      apartment.add(unit)
      apartment.add(unit)
      apartment.add(unit)

      expect(apartment.full?).to eq(false)
    end
  end


  describe "#add" do
    it "should add a roomate to an occupants array" do
      apartment.add(unit)
      expect(apartment.spaces.size).to eq(1)
    end
  end


  describe "#remove" do
    it "should remove roomate from occupants array" do
      apartment.add(unit)
      apartment.remove

      expect(apartment.spaces.size).to eq(0)
    end
  end
end
