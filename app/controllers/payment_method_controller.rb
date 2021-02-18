class PaymentMethodController < ApplicationController

    def pay_with_paypal
        paypal
    end

    def process_paypal_payment
        process_paypal
    end
end
