class PixPaymentMethodFactory < PaymentMethodFactory
  def create
    PixPaymentMethod.new(value, doc_payment, PixTax.new)
  end
end