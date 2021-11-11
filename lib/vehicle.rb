require './lib/passenger'

class Vehicle
  attr_reader :year, :make, :model, :passengers

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @speeding = false
    @passengers = []
  end

  def speed
    @speeding = true
  end

  def speeding?
    @speeding
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

  def num_adults
    adults = 0
    adult = @passengers.map do |passenger|
      if passenger.adult? == true
        adults += 1
      end
    end
    adults
  end
end
