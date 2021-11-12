require './lib/passenger'
require './lib/vehicle'

class Park
  attr_reader :name, :price, :vehicles_admitted, :passengers, :total_revenue

  def initialize(name, price)
    @name = name
    @price = price
    @vehicles_admitted = []
    @passengers = []
    @total_revenue = 0
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

  def charge_admission
    @passengers.each do |passenger|
      if passenger.adult?
        @total_revenue += @price
      end
    end
  end 


end
