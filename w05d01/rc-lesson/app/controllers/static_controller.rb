class StaticController < ApplicationController
	def home
		render :home
	end

	def hello
		@name = params[:name]
	end

	def contact
		render :contact
	end
end