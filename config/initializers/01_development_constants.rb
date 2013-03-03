# add this file to .gitignore
# to access, just call as ENV['FIREBASE_URL'] anywhere in the code
if Rails.env.development? or Rails.env.test?

  ENV['FIREBASE_URL']         = "https://localbounties-01.firebaseio.com"
  # ENV['FACEBOOK_APP_ID']

end