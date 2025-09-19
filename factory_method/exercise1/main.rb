require_relative '../../factory_method/exercise1/transport.rb'
require_relative '../../factory_method/exercise1/transports/motorcycle_transport.rb'
require_relative '../../factory_method/exercise1/transports/bicycle_transport.rb'
require_relative '../../factory_method/exercise1/transport_factory.rb'
require_relative '../../factory_method/exercise1/factories/bicycle_factory.rb'
require_relative '../../factory_method/exercise1/factories/motorcycle_factory.rb'

class Main
  def initialize(transport)
    @transport = transport
  end

  def give_me_a_transport
    send(@transport.to_sym)
  end

  private

  def motorcycle
    MotorcycleFactory.new.create('Driver 1', 'Moto ABC')
  end

  def bicycle
    BicycleFactory.new.create('Driver 2', 'Bicycle 123')
  end
end

puts Main.new('motorcycle').give_me_a_transport.to_h
puts Main.new('bicycle').give_me_a_transport.to_h