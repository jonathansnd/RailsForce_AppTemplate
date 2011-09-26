class ProfilePhotoCell < Cell::Rails

  def display(opts)
  	
    userid = opts[:uid]
    photoSize = opts[:size]

    @PhotoURL = 'smallPhotoUrl'

    @sfservice = User.get_service(userid,session[:service_id])

    client = Databasedotcom::Client.new
    client.version = ENV['sfdc_api_version']
    client.authenticate :token => @sfservice.token, :instance_url => @sfservice.instance_url
    @chatteruser = Databasedotcom::Chatter::User.find(client, @sfservice.uid)

    if photoSize == 'large'
    	@PhotoURL = @chatteruser.raw_hash["photo"]['largePhotoUrl']
    elsif photoSize == 'small'
    	@PhotoURL = @chatteruser.raw_hash["photo"]['smallPhotoUrl']
    end

    @PhotoURL+="?oauth_token="+@sfservice.token
       
    render

  end

end
