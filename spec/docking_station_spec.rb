require "./lib/DockingStation.rb" 

docking_station = DockingStation.new

describe DockingStation do
  it 'DockingStation release bike' do
    expect(docking_station).to respond_to :release_bike
  end
end