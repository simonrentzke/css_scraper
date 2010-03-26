# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_css_scraper_session',
  :secret      => '3935aba794a368660f0294064adb72a8f9f9de89e09797caa24f7f74450e3dbb3ead80d1a0922ebd6e8427b6fb842baae033a2fbccbfcf17f57f0a32c9a52296'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
