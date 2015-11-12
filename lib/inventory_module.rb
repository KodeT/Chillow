module Inventory


  def full?
    @spaces.size >= @capacity
  end

  def remove
    @spaces.pop
  end

  def add(unit)
    @spaces << unit
  end

end
