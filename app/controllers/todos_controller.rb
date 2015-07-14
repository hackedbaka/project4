class TodosController < ApplicationController
	

	def index

		if :response
  		search=params[:response]
  		@response= HTTParty.get"http://steamcommunity.com/id/#{search}/games?tab=all&xml=1"
  		else
  		@response= "The specified profile could not be found."
  		end
	end

	

end
