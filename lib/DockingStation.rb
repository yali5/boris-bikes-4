require "./lib/Bike.rb" 

class DockingStation

  attr_reader :bike

  def initialize
    @docked_bikes = []
    @max_bikes = 20
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
    if @docked_bikes.count >= @max_bikes
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
# station= DockingStation.new
# bike= station.release_bike
# puts bike

