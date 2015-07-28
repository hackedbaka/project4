Rails.application.config.middleware.use OmniAuth::Builder do
  

  provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET'], {
   
    redirect_uri:'http://localhost:3000/auth/google_oauth2/callback'
    # redirect_uri:'https://robor.herokuapp.com/auth/google_oauth2/callback'
	}
end