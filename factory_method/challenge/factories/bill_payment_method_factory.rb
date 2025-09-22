class BillPaymentMethodFactory < PaymentMethodFactory
  def create
    BillPaymentMethod.new(value, doc_payment, BillTax.new)
  end
end