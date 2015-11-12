require 'spec_helper'

describe Occupant do
  let(:occupant) {Occupant.new("John","Smith") }
  describe ".new" do
    it "is an occupant object" do

      expect(occupant).to be_a(Occupant)
    end

    it "takes first and last name of occupant" do

      expect(occupant.first_name).to eq("John")
      expect(occupant.last_name).to eq("Smith")
    end

  end
  # it "is a pending example" do
  #
  #   expect()
  # end
end
