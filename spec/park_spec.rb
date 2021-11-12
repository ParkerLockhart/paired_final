require './lib/passenger'
require './lib/vehicle'
require './lib/park'

describe Park do
  before(:each) do
    @garner = Park.new("Garner", 6)
  end

  describe '#initialize' do
    it 'exists' do
      expect(@garner).to be_instance_of(Park)
    end

    it 'has a name' do
      expect(@garner.name).to eq("Garner")
    end

    it 'has a price' do
      expect(@garner.price).to eq(6)
    end
  end
end
