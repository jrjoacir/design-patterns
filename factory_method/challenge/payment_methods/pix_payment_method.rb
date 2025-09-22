class PixPaymentMethod < PaymentMethod
  EXPIRATION_DAYS = 1

  def initialize(value, doc_payment, tax = PixTax.new)
    params = {
      value: value,
      doc_payment: doc_payment,
      expiration_date: Date.today + EXPIRATION_DAYS,
      tax: tax
    }
    super(params)
  end

  private

  def validate_doc_payment!
  end
end
