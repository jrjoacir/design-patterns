class MotorcycleTransport < Transport
  def initialize(driver, transport_identify)
    params = {
      driver: driver,
      transport_identify: transport_identify,
      speed_limit: 120,
      load_weight_limit: 80,
      engine_type: :combustion
    }
    super(params)
  end
end