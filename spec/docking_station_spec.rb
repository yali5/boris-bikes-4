require "./lib/DockingStation.rb" 

docking_station = DockingStation.new
bike = Bike.new

describe DockingStation do
  it 'DockingStation release bike' do
  expect(docking_station).to respond_to :release_bike
  end

  it 'release bike should return a bike object' do
  expect(subject.release_bike).to be_instance_of Bike
  end

  it  'Docking station .dock to give an argument' do
  expect(docking_station).to respond_to(:dock).with(1).argument
  end

  it 'docks something' do
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bikes' do
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

end