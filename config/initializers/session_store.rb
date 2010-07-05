# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_kapa_session',
  :secret      => '3a21f4164193cda79ab36306dd68c6d384580b5c5bb0c7570126e4ba0362db8f7430087919dcbba71655f7ab98c437667740a27e0da4649c88c9dc799bfec86c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
