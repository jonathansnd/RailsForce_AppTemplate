SampleApp::Application.configure do

  # Settings specified here will take precedence over those in config/application.rb

  ENV['full_host'] = "https://localhost:3000"
  ENV['sfdc_login'] = "https://login.salesforce.com"
  
  ENV['sfdc_consumer_key'] = "3MVG9QDx8IX8nP5SDKtABGAKgTLG5HvlBFkAUwvEEFM7QQ5vyD8bmaoWzI2qsBQpwyZ.Izu2N3UNXdqms.CF9"
  ENV['sfdc_consumer_secret'] = "4971709883066379227"
  ENV['sfdc_api_version'] = '22.0'

  ENV['DATABASEDOTCOM_CLIENT_ID'] =   ENV['sfdc_consumer_key']
  ENV['DATABASEDOTCOM_CLIENT_SECRET'] = ENV['sfdc_consumer_secret']

  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the webserver when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin
  
end

