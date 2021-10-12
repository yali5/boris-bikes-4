require "./lib/Bike.rb" 

describe Bike do
    it 'bike is good' do
      expect(subject).to respond_to :working?
    end
  end