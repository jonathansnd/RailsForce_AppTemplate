class UserStatusCell < Cell::Rails

  def display(opts)
  	
    userid = opts[:uid]

    @sfservice = User.get_service(userid,session[:service_id])

    client = Databasedotcom::Client.new
    client.version = ENV['sfdc_api_version']
    client.authenticate :token => @sfservice.token, :instance_url => @sfservice.instance_url
    @chatteruser = Databasedotcom::Chatter::User.find(client, @sfservice.uid)
       
    render

  end

end
