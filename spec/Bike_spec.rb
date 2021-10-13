require "./lib/Bike.rb" 

bike = Bike.new

describe Bike do
  it 'bike is good' do
    expect(bike.working?).to eq true
  end
end