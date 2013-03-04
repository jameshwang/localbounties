# add this file to .gitignore
# to access, just call as ENV['FIREBASE_URL'] anywhere in the code
if Rails.env.development? or Rails.env.test?

  ENV['FIREBASE_URL']         = "https://localbounties.firebaseio.com"

  # Facebook auth
  ENV['FACEBOOK_APP_ID']         = "104082416444725"
  ENV['FACEBOOK_APP_SECRET']     = "2a8c85e50602cadb05340f33598ace13"

end