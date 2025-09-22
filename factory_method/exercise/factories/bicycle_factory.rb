class BicycleFactory < TransportFactory
  def create
    BicycleTransport.new(driver, transport_identify)
  end
end