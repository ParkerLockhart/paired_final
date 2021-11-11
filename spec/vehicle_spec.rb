require './lib/passenger'
require './lib/vehicle'

RSpec.describe Vehicle do
  before(:each) do
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
  end

  describe '#initialize' do
    it 'exists' do
      expect(@vehicle).to be_instance_of(Vehicle)
    end

    it 'has a year' do
      expect(@vehicle.year).to eq("2001")
    end

    it 'has a make' do
      expect(@vehicle.make).to eq("Honda")
    end

    it 'has a model' do
      expect(@vehicle.model).to eq("Civic")
    end
  end

  describe '#speeding?' do
    it 'returns whether a vehicle is speeding' do
      expect(@vehicle.speeding?).to eq(false)
      @vehicle.speed
      expect(@vehicle.speeding?).to eq(true)
    end
  end 
end
