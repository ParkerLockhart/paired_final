require './lib/passenger'
require './lib/vehicle'
require './lib/park'

describe Park do
  before(:each) do
    @park = Park.new
  end

  describe '#initialize' do
    it 'exists' do
      expect(@park).to be_instance_of(Park)
    end
  end
end 
