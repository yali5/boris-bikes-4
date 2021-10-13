require "./lib/Bike.rb" 

class DockingStation

  attr_reader :bike

  def release_bike
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end

end
# station= DockingStation.new
# bike= station.release_bike
# puts bike

