class BillPaymentMethod < PaymentMethod
  EXPIRATION_DAYS = 5

  def initialize(value, doc_payment = build_doc_payment, tax = BillTax.new)
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

  def build_doc_payment
    SecureRandom.uuid
  end
end