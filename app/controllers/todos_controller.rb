class TodosController < ApplicationController

	def index

	end	

	def create

		if :response
  		search=params[:response]
  		@response= HTTParty.get"http://steamcommunity.com/id/#{search}/games?tab=all&xml=1"
  		else
  		@response= "The specified profile could not be found."
  		end

  		

	end

	def show

	end

	

end
