require './lib/passenger'
require './lib/vehicle'
require './lib/park'

describe Park do
  before(:each) do
    @garner = Park.new("Garner", 6)
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
    @vehicle1 = Vehicle.new("1997", "Toyota", "4Runner")
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @jude = Passenger.new({"name" => "Jude", "age" => 20})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    @vehicle.add_passenger(@charlie)
    @vehicle.add_passenger(@jude)
    @vehicle.add_passenger(@taylor)
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

    it 'has vehicles_admitted' do
      expect(@garner.vehicles_admitted).to eq([])
    end
  end

  describe '#admit_vehicle' do
    it 'adds vehicle and passengers to admission lists' do
      @garner.admit_vehicle(@vehicle)
      expect(@garner.vehicles_admitted).to eq([@vehicle])
      @garner.admit_vehicle(@vehicle1)
      expect(@garner.vehicles_admitted).to eq([@vehicle, @vehicle1])
    end
  end

  describe '#admit_passengers' do
    it 'admits passengers from vehicles' do
      @garner.admit_vehicle(@vehicle)
      @garner.admit_vehicle(@vehicle1)
      @garner.admit_passengers
      expect(@garner.passengers).to eq([@charlie, @jude, @taylor])
    end
  end

  describe '#charge_admission' do
    it 'charges each adult admission price' do  
      @garner.admit_vehicle(@vehicle)
      @garner.admit_vehicle(@vehicle1)
      @garner.admit_passengers
      @garner.charge_admission
      expect(@garner.total_revenue).to eq(12)
    end
  end

end
