require 'httparty'

class ForceUtils

  include HTTParty
  #doesn't seem to pick up env variable correctly if I set it here
  #headers 'Authorization' => "OAuth #{ENV['sfdc_token']}"
  format :json
  #debug_output $stderr

  def self.refreshToken(current_user,service_id)
    puts '>>> AUTH TOKEN EXPIRED ... USING REFRESH TOKEN >>> '
    serviceauth = current_user.services.find(:first, :conditions => { :id => service_id })
    payload = 'grant_type=refresh_token' + '&client_id=' + ENV['sfdc_consumer_key']+ '&client_secret=' + ENV['sfdc_consumer_secret'] + '&refresh_token=' + serviceauth.token_refresh
    result = ForceUtils.post(ENV['sfdc_login']+'/services/oauth2/token',:body => payload)
    serviceauth.token = result['access_token']
    serviceauth.save
  end

end