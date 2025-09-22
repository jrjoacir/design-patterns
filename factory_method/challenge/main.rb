require 'date'
require 'securerandom'

require_relative 'tax.rb'
require_relative 'payment_method.rb'
require_relative 'payment_method_factory.rb'

require_relative '../../factory_method/challenge/taxes/bill_tax.rb'
require_relative '../../factory_method/challenge/taxes/credit_card_tax.rb'
require_relative '../../factory_method/challenge/taxes/pix_tax.rb'

require_relative '../../factory_method/challenge/payment_methods/bill_payment_method.rb'
require_relative '../../factory_method/challenge/payment_methods/credit_card_payment_method.rb'
require_relative '../../factory_method/challenge/payment_methods/pix_payment_method.rb'

require_relative '../../factory_method/challenge/factories/bill_payment_method_factory.rb'
require_relative '../../factory_method/challenge/factories/credit_card_payment_method_factory.rb'
require_relative '../../factory_method/challenge/factories/pix_payment_method_factory.rb'

module Main
  class << self
    def pix
      PixPaymentMethodFactory.new(200, 'pix@xip.com.br').create
    end

    def credit_card
      CreditCardPaymentMethodFactory.new(250, '12345-6789').create
    end

    def bill
      BillPaymentMethodFactory.new(1950, 'abcd-efgh-ijlm').create
    end
  end
end

pix = Main.pix
puts pix.status
puts pix.confirm
puts pix.status
puts

credit_card = Main.credit_card
puts credit_card.status
puts credit_card.confirm
puts credit_card.status
puts

bill = Main.bill
puts bill.status
#puts bill.confirm
puts bill.status