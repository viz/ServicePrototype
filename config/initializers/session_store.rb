# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ServicePrototype_session',
  :secret      => 'af2142e11d2b8258370faa6c4bf1e137f9ee42666e7bc239bb027fe2add74ec2845422d6581a08daaaefa9e36fd29cddba4f6b0f389f2c939ade17a653c5b3f4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
