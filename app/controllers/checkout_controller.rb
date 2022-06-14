class CheckoutController < ApplicationController
  def create
    user = User.find(params[:id])
    @amount = user.rate * 100
    @session = Stripe::Checkout::Session.create({
      payment_method_types: ['card'],
      line_items: [{name: user.first_name, amount: @amount, currency: "gbp",
      quantity: 1}],
      mode: 'payment',
      success_url: root_url,
      cancel_url: root_url,
    })
    respond_to do |format|
      format.json
      format.html { render "checkout/create"}
      format.js
    end
  end
end
