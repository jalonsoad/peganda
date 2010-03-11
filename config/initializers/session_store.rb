# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_peganda_session',
  :secret      => '7aac2ae26122a21d4a93160be00863bb9d39630892bc7b950807afc8ff6ad7c0ab41bb5bb82ba292a32e31e5cc3c08af17784decc529640d02da0deed0cfeca0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
