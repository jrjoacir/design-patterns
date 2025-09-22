class TransportFactory
  def initialize(driver, transport_identify)
    @driver = driver
    @transport_identify = transport_identify
  end

  def to_s
    "The transport #{transport.class} has the engine type #{transport.engine_type} and is driven by #{transport.driver}."
  end

  def show_loads
    transport.loads
  end

  def show_tracking
    transport.tracking
  end

  private

  attr :driver, :transport_identify

  def create
    raise 'Not implemented!'
  end

  def transport
    @transport ||= create
  end
end
