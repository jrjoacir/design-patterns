class MotorcycleFactory < TransportFactory
  def create(driver, transport_identify)
    MotorcycleTransport.new(driver, transport_identify)
  end
end