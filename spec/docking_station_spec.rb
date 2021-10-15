require "./lib/DockingStation.rb" 

describe DockingStation do
  it 'DockingStation release bike' do
    bike = Bike.new
    docking_station = DockingStation.new(20)
    expect(docking_station).to respond_to :release_bike
  end

  it 'release bike should return a bike object' do # I expect this test to fail when we remove .Bike.new instance as that is infinite
    bike = Bike.new
    docking_station = DockingStation.new(20)
    docking_station.dock(bike)
    expect(docking_station.release_bike).to be_instance_of Bike
  end

  it  'Docking station .dock to give an argument' do
    bike = Bike.new
    docking_station = DockingStation.new(20)
    expect(docking_station).to respond_to(:dock).with(1).argument
  end

  it 'docks something' do
    bike = Bike.new
    docking_station = DockingStation.new(20)
    expect(docking_station).to respond_to :dock 
  end

  it 'returns docked bikes' do
    bike = Bike.new
    docking_station = DockingStation.new(20)
    docking_station.dock(bike)
    expect(docking_station.release_bike).to be_instance_of Bike
  end

  it 'No bikes released if station is empty' do
    bike = Bike.new
    docking_station = DockingStation.new(20) 
    expect{docking_station.release_bike}.to raise_error("No bikes available")
  end

  it 'Docking station capacity (20) is full returns and error when docking additional bikes' do
    docking_station = DockingStation.new(20)
    DockingStation::DEFAULT_CAPACITY.times {docking_station.dock(Bike.new)}
    expect{docking_station.dock(Bike.new)}.to raise_error("No docks available")
  end

  it 'DockingStation class to accept arguments to change DEFAULT_CAPACITY' do
    docking_station = DockingStation.new(20)
    expect(DockingStation).to respond_to(:new).with(1).argument
  end

  it 'Check docking station default capacity is set if no argument' do
    # Arrange
    # docking_station = DockingStation.new()
    # Assert
    expect(DockingStation.new().capacity).to eq(DockingStation::DEFAULT_CAPACITY)
  end

  it 'Check docking station changes default capacity to argument' do
    # Arrange
    # docking_station = DockingStation.new(5)
    # Assert
    expect(DockingStation.new(5).capacity).to eq(5)
  end

end