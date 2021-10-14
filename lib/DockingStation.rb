require "./lib/Bike.rb" 

class DockingStation

  attr_reader :bike
  DEFAULT_CAPACITY = 20 # This is the max capacity of the docking station

  def initialize(undefined)
    @docked_bikes = []
    @capacity = DEFAULT_CAPACITY
  end

  def release_bike
    raise "No bikes available" if dock_empty?
    return Bike.new
  end

  def dock(bike)
    fail "No docks available" if dock_full?
    @docked_bikes << bike
  end

  private

  def dock_full?
    if @docked_bikes.count >= DEFAULT_CAPACITY
      return true
    else
      return false
    end
  end

  def dock_empty?
    if @docked_bikes.count == 0
      return true
    else
      return false
    end
  end

end


# Currently we are testing initialize(argument) vs just initialize - revert to no argument to a reasonable save point