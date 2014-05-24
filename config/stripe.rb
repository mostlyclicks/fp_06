Rails.configuration.stripe = {
  :publishbable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
  :secret_key => ENV['STRIPE_SECRET_KEY']


}

stripe.api_key = Rails.configuration.stripe[:secret_key]