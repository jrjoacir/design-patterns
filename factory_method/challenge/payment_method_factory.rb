class PaymentMethodFactory
  attr_reader :value, :doc_payment

  def initialize(value, doc_payment)
    @value = value
    @doc_payment = doc_payment
  end

  def confirm
    raise 'Payment is already payed' if payment.status == :payed
    raise 'Payment is delayed' if payment.status == :delayed

    payment.confirm
  end

  def to_h
    {
      value: payment.value,
      payment_id: payment.payment_id,
      doc_payment: payment.doc_payment,
      tax: payment.tax,
      expiration_date: payment.expiration_date,
      total_value: payment.total_value,
      payed_value: payment.payed_value,
      status: payment.status
    }
  end

  private

  def create
    raise 'Not implemented!'
  end

  def payment
    @payment ||= create
  end
end