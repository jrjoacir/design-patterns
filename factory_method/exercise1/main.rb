require_relative '../../factory_method/exercise1/transport.rb'
require_relative '../../factory_method/exercise1/transports/motorcycle_transport.rb'
require_relative '../../factory_method/exercise1/transports/bicycle_transport.rb'
require_relative '../../factory_method/exercise1/transport_factory.rb'
require_relative '../../factory_method/exercise1/factories/bicycle_factory.rb'
require_relative '../../factory_method/exercise1/factories/motorcycle_factory.rb'

module Main
  class << self
    def motorcycle
      MotorcycleFactory.new.create('Driver 1', 'Moto ABC')
    end

    def bicycle
      BicycleFactory.new.create('Driver 2', 'Bicycle 123')
    end
  end
end

puts Main.motorcycle.to_h
puts Main.bicycle.to_h