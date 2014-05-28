Rails.configuration.stripe = {
  # :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
  # :secret_key => ENV['STRIPE_SECRET_KEY']
  publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
  secret_key:      ENV['STRIPE_SECRET_KEY'],


}

Stripe.api_key = Rails.configuration.stripe[:secret_key]

#https://www.youtube.com/watch?v=kp-9Ac5wTxY 10:29