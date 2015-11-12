require 'spec_helper'

describe House do


  let (:house) {House.new("11 Mass Ave", "Boston", "02115", "$500,000")}

  describe ".new"  do
    it 'should be a house class' do
    expect(house).to be_a(House)
    end

    it "takes asking price as an argument" do

      expect(house.asking_price).to eq("$500,000")
    end

    it 'takes address as an argument' do
    expect(house.address).to eq("11 Mass Ave")
    end

    it 'takes city or town as an argument' do
      expect(house.city_or_town).to eq("Boston")
    end

    it 'takes zip as an argument' do
      expect(house.zip_code).to eq("02115")
    end
  end
end
