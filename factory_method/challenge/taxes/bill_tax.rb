class BillTax < Tax
  def initialize(type = :value, value = 3.5)
    super(type, value)
  end
end
