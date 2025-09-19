class Transport
  SPEED_LIMIT_RANGE = { from: 0, to: Float::INFINITY }
  LOAD_WEIGHT_LIMIT_RANGE = { from: 0, to: Float::INFINITY }
  ENGINES_TYPES = [:human, :combustion]

  attr_reader :driver, :transport_identify, :speed_limit, :load_weight_limit, :engine_type, :delivery_status, :loads

  def initialize(params)
    @driver = params[:driver]
    @transport_identify = params[:transport_identify]
    @speed_limit = params[:speed_limit]
    @load_weight_limit = params[:load_weight_limit]
    @engine_type = params[:engine_type]
    @delivery_status = :wait
    @loads = []
    validate!
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

  def start_delivery
    delivery_status = :started
  end

  def add_load(load)
    loads.push(load)
    loads
  end

  def tracking
    'Delivery tracking'
  end

  private

  attr_writer :delivery_status, :loads

  def validate!
    speed_limit_validate!
    load_weight_limit_validate!
    engine_type_validate!
  end

  def speed_limit_validate!
    from = SPEED_LIMIT_RANGE[:from]
    to = SPEED_LIMIT_RANGE[:to]

    raise 'Speed limit is invalid' unless speed_limit.between?(from, to)
  end

  def load_weight_limit_validate!
    from = LOAD_WEIGHT_LIMIT_RANGE[:from]
    to = LOAD_WEIGHT_LIMIT_RANGE[:to]

    raise 'Load weight limit is invalid' unless load_weight_limit.between?(from, to)
  end

  def engine_type_validate!
    raise 'Engine type is invalid' unless ENGINES_TYPES.include?(engine_type)
  end
end