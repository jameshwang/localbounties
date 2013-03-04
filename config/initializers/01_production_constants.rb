# this file can be checked into git
if Rails.env.production?

  ENV['FIREBASE_URL']         = "https://local-bounties-production.firebaseio.com"

end