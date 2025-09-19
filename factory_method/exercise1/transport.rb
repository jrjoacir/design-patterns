module Transport
  attr_reader :driver, :transport_identify, :speed_limit, :load_weight_limit, :engine_type, :delivery_status, :loads

  def initialize(params); end
  def to_h; end
  def start_delivery; end
  def add_load(load); end
  def tracking; end
end
