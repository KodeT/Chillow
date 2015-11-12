require_relative 'inventory_module'
class Apartment < Dwelling

  include Inventory

  attr_reader :rent_price, :lease_start, :lease_end, :spaces, :capacity

  def initialize(address, city_or_town, zip_code, rent_price, lease_start, lease_end)
    super(address, city_or_town, zip_code)
    @rent_price = rent_price
    @lease_start = lease_start
    @lease_end = lease_end
    @capacity = 4
    @spaces = []
  end
end
