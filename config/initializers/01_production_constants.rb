# this file can be checked into git
if Rails.env.production?

  ENV['FIREBASE_URL']         = "https://local-bounties-production.firebaseio.com"

  # Facebook auth
  ENV['FACEBOOK_APP_ID']         = "336711963095012"
  ENV['FACEBOOK_APP_SECRET']     = "e41b0de5e3dc9fc2f187bd9f751cfc47"

end