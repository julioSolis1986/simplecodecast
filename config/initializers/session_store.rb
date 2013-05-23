# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_gerenciador_session',
  :secret      => 'b2a24dd24f97957d0ae468cb3033765ba1b7883b149b4fb33b0ad37288acb1a7003952f00107349d527e8ead6acad15dbcd657d4c3222b24ab94e3ca7f2e147b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store