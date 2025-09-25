class OnlineInvoice < Invoice
  PAYMENT_METHOD_AVAILABLES = {
    credit_card: { tax: 3 } ,
    pix: { tax: 0 }
  }

  def initialize(customer, value, payment_method)
    tax = PAYMENT_METHOD_AVAILABLES.dig(payment_method, :tax)
    super(customer, value, payment_method, tax)
  end

  private

  def payment_method_availables
    @payment_method_availables ||= PAYMENT_METHOD_AVAILABLES.keys
  end

  def validate_payment_method!
    raise 'Invalid Payment Method' unless payment_method_availables.include?(payment_method)
  end
end
