require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Forcedotcom <  OmniAuth::Strategies::OAuth2

      def initialize(app, consumer_key = nil, consumer_secret = nil, options = {}, &block)
        client_options = {
          :site =>  ENV['sfdc_login'],
          :authorize_path => '/services/oauth2/authorize',
          :access_token_path => '/services/oauth2/token'
        }

        options.merge!(:response_type => 'token', :grant_type => 'authorization_code', :display => 'touch')

        super(app, :forcedotcom, consumer_key, consumer_secret, client_options, options, &block)
      end
      
  end
end