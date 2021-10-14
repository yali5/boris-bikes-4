require "./lib/Bike.rb" 

class DockingStation

  attr_reader :bike

  def initialize
    @docked_bikes = []
    @max_bikes = 20
  end

  def release_bike
    if @docked_bikes.empty? # needs to return and error here
      raise "No bikes available"
    else
    return Bike.new
    end
  end

  def dock(bike)
    if @docked_bikes.length < @max_bikes
    @docked_bikes << bike
    return true
    else raise "No docks available"
    end
  end

end
# station= DockingStation.new
# bike= station.release_bike
# puts bike

