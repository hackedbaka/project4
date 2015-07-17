class TodosController < ApplicationController
	before_action :authorize
	def index
		@lists=List.all
	end	

	def search
		if :response
	  		search=params[:response]
	  		@response= HTTParty.get"http://steamcommunity.com/id/#{search}/games?tab=all&xml=1"
	  		if @response['gamesList'] != nil
		  		@response['gamesList']['games']['game'].each do |stuff|
					@list = List.create({name: stuff['name'], logo: stuff['logo'], storelink: stuff['storeLink']})
				end
			end
  		else
  			@response= "The specified profile could not be found."
  		end
	  		
	end


	

end
