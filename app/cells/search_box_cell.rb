class SearchBoxCell < Cell::Rails

  def display(opts)
  	userid = opts[:uid]
    @sfservice = User.get_service(userid,session[:service_id])

    render
  end

end
