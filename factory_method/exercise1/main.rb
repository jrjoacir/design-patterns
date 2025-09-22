require_relative '../../factory_method/exercise1/transport.rb'
require_relative '../../factory_method/exercise1/transports/motorcycle_transport.rb'
require_relative '../../factory_method/exercise1/transports/bicycle_transport.rb'
require_relative '../../factory_method/exercise1/transport_factory.rb'
require_relative '../../factory_method/exercise1/factories/bicycle_factory.rb'
require_relative '../../factory_method/exercise1/factories/motorcycle_factory.rb'

module Main
  class << self
    def motorcycle
      MotorcycleFactory.new('Driver 1', 'Moto ABC')
    end

    def bicycle
      BicycleFactory.new('Driver 2', 'Bicycle 123')
    end
  end
end

motorcycle = Main.motorcycle
puts motorcycle.to_s
puts motorcycle.show_loads
puts motorcycle.show_tracking
puts

bicycle = Main.bicycle
puts bicycle.to_s
puts bicycle.show_loads
puts bicycle.show_tracking