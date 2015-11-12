# require 'pry'
require_relative 'occupant'
require_relative 'box'

class Truck
  include Inventory

  attr_reader :capacity, :spaces

  def initialize
    @capacity = 4
    @spaces = []
  end

  def unload(owner)
    @spaces.delete_if { |b| b.owner.first_name == owner.first_name && b.owner.last_name == owner.last_name  }
  end

end
truck = Truck.new
occupant = Occupant.new("John", "Pespisa")
unit = Box.new(occupant)
