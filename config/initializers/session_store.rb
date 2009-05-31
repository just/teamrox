# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_team_session',
  :secret      => '35ad249508751c1935c3a3ed816fc7db591c6f70f7ccf769561241aea86c910b7d1f6af7a11e70a204b003a056ed6b68a2019c9e2372758c013419dfb228adfc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
