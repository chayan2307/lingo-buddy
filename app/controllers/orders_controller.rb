class OrdersController < ApplicationController
  def create
    @skip_footer = true
    user = User.find(params[:user_id])
    order  = Order.create!(amount: user.rate, state: 'pending', user: current_user)

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: user.first_name,
        amount: order.amount_cents,
        currency: 'gbp',
        quantity: 1
      }],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )

    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end

  def show
    @skip_footer = true
    @order = current_user.orders.find(params[:id])
  end
end
