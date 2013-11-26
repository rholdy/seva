class ChargesController < ApplicationController
  before_filter :authenticate_user!
  def new
    
  end

  def create
    # Amount in cents

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :card  => params[:stripeToken],
      :plan => params[:plan][:id]
    )
    current_user.update_attributes(stripe_customer_id: customer.id, plan: customer.subscription.plan.id)
    # raise customer
    # @amount = 500
    # charge = Stripe::Charge.create(
    #   :customer    => customer.id,
    #   :amount      => @amount,
    #   :description => 'Rails Stripe customer',
    #   :currency    => 'usd'
    # )
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
