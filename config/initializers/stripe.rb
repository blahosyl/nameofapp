if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_QV0005t6MaY9q524KJLTuWut00Pif661iW',
    secret_key: 'sk_test_yMi2goNfunpVNckwXBP6q9WG00HbjRfDVE'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
