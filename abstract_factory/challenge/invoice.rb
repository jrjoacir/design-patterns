class Invoice
  attr_reader :customer, :value, :payment_method, :tax

  def initialize(customer, value, payment_method, tax)
    @customer = customer
    @value = value
    @payment_method = payment_method
    @tax = tax
    validate!
  end

  def total_value
    @total_value ||= value * (1 + (tax / 100))
  end

  private

  def validate!
    validate_value!
    validate_payment_method!
    validate_tax!
  end

  def validate_value!
    raise 'Invalid value' if value.to_i.negative?
  end

  def validate_payment_method!
    raise 'Not implemented'
  end

  def validate_tax!
    raise 'Invalid value' if tax.to_i.negative?
  end
end
