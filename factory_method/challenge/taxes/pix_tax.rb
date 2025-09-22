class PixTax < Tax
  def initialize(type = :value, value = 0.0)
    super(type, value)
  end
end
