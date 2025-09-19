class BicycleFactory < TransportFactory
  def create(driver, transport_identify)
    BicycleTransport.new(driver, transport_identify)
  end
end