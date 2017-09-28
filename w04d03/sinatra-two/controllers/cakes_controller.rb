class CakesController < Sinatra::Base
	
	configure :development do
		register Sinatra::Reloader
	end

	#INDEX
	get "/cakes" do
		"All Cakes"
	end

	#NEW
	get "/cakes/new" do
		"New Cake Form"
	end

	#SHOW
	get "/cakes/:id" do
		id = params[:id]
		"Show Cake #{id}"
	end

	#CREATE
	post "/cakes" do
		"Cake Created"
	end

	#EDIT
	get "/cakes/:id/edit" do
		id = params[:id]
		"Edit Cake #{id} Form"
	end

	#UPDATE
	patch "/cakes/:id" do
		id = params[:id]
		"Update cake #{id}"
	end

	#DELETE
	delete "/cakes/:id" do
		id = params[:id]
		"Delete #{id}"
	end


end