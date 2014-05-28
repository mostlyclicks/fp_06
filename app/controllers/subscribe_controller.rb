class SubscribeController < ApplicationController
  before_action :authenticate_user!

  def new
    #empty - just shows the view/form
  end

  def update
    #Get the credit card details submitted by the form
    token = params[:stripeToken]
    @amount = 499

    #create a customer
    customer = Stripe::Customer.create(
      :card => token,
      :plan => 5150,
      :email => current_user.email
    )

    charge = Stripe::Charge.create(
      :customer => customer.id,
      :amount => @amount,
      :description => 'Month subscription',
      :currency => 'usd'
    )

    current_user.subscribed = true
    current_user.stripeid = customer.id
    current_user.save

    redirect_to swimmers_path, :notice => "Your subscription was setup! You may now make your page!"

  end
end
