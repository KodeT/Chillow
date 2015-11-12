require 'spec_helper'

describe Dwelling do

  let (:dwelling) {Dwelling.new("11 Mass Ave", "Boston", "02115")}

  describe ".new"  do
    it 'should be a dwelling class' do
    expect(dwelling).to be_a(Dwelling)
    end


    it 'takes address as an argument' do
    expect(dwelling.address).to eq("11 Mass Ave")
    end

    it 'takes city or town as an argument' do
      expect(dwelling.city_or_town).to eq("Boston")
    end

    it 'takes zip as an argument' do
      expect(dwelling.zip_code).to eq("02115")
    end
end

end
