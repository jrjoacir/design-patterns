require 'date'
require 'securerandom'

class PaymentMethod
  attr_reader :value, :payment_id, :doc_payment, :tax, :expiration_date, :total_value, :payed_value

  def initialize(params)
    @value = params[:value]
    @doc_payment = params[:doc_payment]
    @tax = params[:tax]
    @expiration_date = params[:expiration_date]
    @total_value = calculate_total_value(params[:value])
    @payed_value = 0.0
    validate_doc_payment!
  end

  def confirm
    self.payed_value = total_value
  end

  def pay(value = total_value)
    self.payed_value += value
  end

  def status
    return :payed if payed_value >= total_value
    return :delayed if expiration_date < Date.today

    :opened
  end

  private

  attr_writer :payed_value

  def calculate_total_value(value)
    return value * (1 + (tax.value / 100)) if tax.type == :percent

    value + tax.value
  end

  def build_payment_id
    SecureRandom.uuid
  end

  def build_doc_payment
    raise 'Not implemented!'
  end

  def validate_doc_payment!
    raise 'Not implemented!'
  end
end
