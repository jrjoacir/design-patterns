class CreditCardPaymentMethodFactory < PaymentMethodFactory
  def create
    CreditCardPaymentMethod.new(value, doc_payment)
  end
end