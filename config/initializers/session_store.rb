# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ocg_session',
  :secret      => '90a341ea45e45da5e42b1c12d4734e6509ba0ab9619152f9e89a95141a214ba411d6ecf99b614ee355a32f757c1871af2aeb0ec0ee2196193701b57258605f72'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
