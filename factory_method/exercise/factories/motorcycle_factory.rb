class MotorcycleFactory < TransportFactory
  def create
    MotorcycleTransport.new(driver, transport_identify)
  end
end