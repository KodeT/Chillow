require 'spec_helper'

describe Truck do
  let(:truck) {Truck.new}
  let(:occupant) {Occupant.new("John", "Pespisa")}
  let(:unit) {Box.new(occupant)}

  describe ".new" do
    it 'creates a truck class' do
      expect(truck).to be_a(Truck)
    end

    it 'has a box capacity' do
      expect(truck.capacity).to eq(4)
    end

    it 'stores cargo' do
      expect(truck.spaces).to eq([])
    end

  end

  describe "#full?" do
    it "should check if cargo is full" do
      truck.add(unit)
      truck.add(unit)
      truck.add(unit)
      truck.add(unit)

      expect(truck.full?).to eq(true)
    end

    it "should check if cargo is empty or not" do
      truck.add(unit)
      truck.add(unit)
      truck.add(unit)

      expect(truck.full?).to eq(false)
    end
  end


  describe "#add" do
    it "should add a cargo box to a cargo array" do
      truck.add(unit)
      expect(truck.spaces.size).to eq(1)
    end
  end


  describe "#remove" do
    it "should remove cargo box from cargo array" do
      truck.add(unit)
      truck.remove

      expect(truck.spaces.size).to eq(0)
    end
  end

  # describe "#unload" do
  #    it 'removes boxes of an owner from truck' do
  #     truck.add(box)
  #     truck.add(box)
  #     truck.add(box)
  #
  #     truck.unload(box)
  #
  #     expect(truck.cargo.size).to eq.(0)
  #   end
  # end



end
