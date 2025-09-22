class CreditCardPaymentMethod < PaymentMethod
  def initialize(value, doc_payment, tax = CreditCardTax.new)
    params = {
      value: value,
      doc_payment: doc_payment,
      expiration_date: Date.today,
      tax: tax
    }
    super(params)
    confirm
  end

  private

  def validate_doc_payment!
  end
end
