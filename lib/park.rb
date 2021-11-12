require './lib/passenger'
require './lib/vehicle'

class Park
  attr_reader :name, :price, :vehicles_admitted, :passengers

  def initialize(name, price)
    @name = name
    @price = price
    @vehicles_admitted = []
    @passengers = []
  end

  def admit_vehicle(vehicle)
    @vehicles_admitted << vehicle
  end

  def admit_passengers
    @vehicles_admitted.each do |vehicle|
      vehicle.passengers.each do |passenger|
        @passengers << passenger
      end  
    end
  end


end
