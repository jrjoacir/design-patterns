class BicycleTransport
  include Transport

  SPEED_LIMIT = 30
  LOAD_WEIGHT_LIMIT = 20
  ENGINE_TYPE = :human
  DELIVERY_STATUS = :wait

  def initialize(driver, transport_identify)
    @driver = driver
    @transport_identify = transport_identify
    @speed_limit = SPEED_LIMIT
    @load_weight_limit = LOAD_WEIGHT_LIMIT
    @engine_type = ENGINE_TYPE
    @delivery_status = DELIVERY_STATUS
    @loads = []
  end

  def to_h
    {
      driver: driver,
      transport_identify: transport_identify,
      speed_limit: speed_limit,
      load_weight_limit: load_weight_limit,
      engine_type: engine_type,
      delivery_status: delivery_status,
    }
  end
end
