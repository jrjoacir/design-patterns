class BicycleTransport < Transport
  def initialize(driver, transport_identify)
    params = {
      driver: driver,
      transport_identify: transport_identify,
      speed_limit: 30,
      load_weight_limit: 20,
      engine_type: :human
    }
    super(params)
  end
end