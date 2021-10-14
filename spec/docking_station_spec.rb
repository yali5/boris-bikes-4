require "./lib/DockingStation.rb" 

bike = Bike.new
docking_station = DockingStation.new

describe DockingStation do
  it 'DockingStation release bike' do
    bike = Bike.new
    docking_station = DockingStation.new
    expect(docking_station).to respond_to :release_bike
  end

  it 'release bike should return a bike object' do # I expect this test to fail when we remove .Bike.new instance as that is infinite
    bike = Bike.new
    docking_station = DockingStation.new
    docking_station.dock(bike)
    expect(docking_station.release_bike).to be_instance_of Bike
  end

  it  'Docking station .dock to give an argument' do
    expect(docking_station).to respond_to(:dock).with(1).argument
    bike = Bike.new
    docking_station = DockingStation.new
  end

  it 'docks something' do
    expect(subject).to respond_to :dock 
    bike = Bike.new
    docking_station = DockingStation.new
  end

  it 'returns docked bikes' do
    bike = Bike.new
    docking_station = DockingStation.new
    docking_station.dock(bike)
    expect(docking_station.release_bike).to be_instance_of Bike
  end

  it 'No bikes released if station is empty' do
    bike = Bike.new
    docking_station = DockingStation.new  
    expect{docking_station.release_bike}.to raise_error("No bikes available")
  end

  it 'Docking station capacity (20) is full returns and error when docking additional bikes' do
    docking_station = DockingStation.new
    DockingStation::DEFAULT_CAPACITY.times {docking_station.dock(Bike.new)}
    expect{docking_station.dock(Bike.new)}.to raise_error("No docks available")
  end
end