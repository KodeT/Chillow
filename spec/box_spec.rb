require 'spec_helper'

describe Box do
  let (:owner) {Occupant.new("John", "Pespisa")}
  let (:box) { Box.new(owner)}

  describe ".new" do
    it 'creates a box class' do
      expect(box).to be_a(Box)
    end

    it "takes 'owner' as an argument" do

      expect(box.owner).to eq(owner)
    end
  end




end
