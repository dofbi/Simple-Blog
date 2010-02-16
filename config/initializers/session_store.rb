# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_simple_blog_session',
  :secret      => 'fab41524b65b31f30c67de6f8cef4fad2632c2e28dfd785c2ac579cac9eaea7fa8821cca749658b587736234c588949d58c2aba81d344b6049db49ffc31545bf'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
