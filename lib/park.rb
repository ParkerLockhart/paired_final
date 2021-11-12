require './lib/passenger'
require './lib/vehicle'

class Park
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end
