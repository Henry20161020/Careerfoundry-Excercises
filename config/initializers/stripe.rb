if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_HtCskSXzpfR9gSVftTGmTnDD',
    secret_key: 'sk_test_oXuZHCfRmzy2EkjUc379p0FW'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
