require "./lib/DockingStation.rb" 

docking_station = DockingStation.new

describe DockingStation do
  #it 'release_bike' do expect(subject).to
  #respond_to :release_bike
  it 'DockingStation release bike' do
    expect(docking_station).to respond_to :release_bike
  end
end
