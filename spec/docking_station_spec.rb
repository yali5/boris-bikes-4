require "./lib/DockingStation.rb" 

docking_station = DockingStation.new

describe DockingStation do
  it 'DockingStation release bike' do
    expect(docking_station).to respond_to :release_bike
  end
   it 'release bike should return a bike object' do
    expect(subject.release_bike).to be_instance_of Bike
  end

end