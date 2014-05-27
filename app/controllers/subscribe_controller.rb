class SubscribeController < ApplicationController
  before_action :authenticate_user!

  def new
    #empty - just shows the view/form
  end

  def update
    #Get the credit card details submitted by the form
    token = params[:stripeToken]

    #create a customer
    customer = Stripe::Customer.create(
      :card => token,
      :plan => 5150,
      :email => current_user.email
    )

    current_user.subscribed = true
    current_user.stripeid = customer.id
    current_user.save

    redirect _to swimmers_index_path, :notice => "Your subscription was setup! You may now make your page!"

  end
end
