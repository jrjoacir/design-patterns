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

  private

  def create
    raise 'Not implemented!'
  end

  def payment
    @payment ||= create
  end
end