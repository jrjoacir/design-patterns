class CreditCardTax < Tax
  def initialize(type = :percent, value = 2.5)
    super(type, value)
  end
end
