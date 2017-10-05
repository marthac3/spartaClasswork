class CakesApiController < Sinatra::Base
	
	configure :development do
		register Sinatra::Reloader
	end

	$cakes = [
		{
			id: 0,
			flavour: "Chocolate",
			layers: 2
		},
		{
			id: 1,
			flavour: "Vanilla",
			layers: 5
		},
		{
			id: 2,
			flavour: "Banana",
			layers: 1
		}
	]

	#INDEX
	get "/api/cakes" do
		json $cakes
	end

	#SHOW
	get "/api/cakes/:id" do
		id = params[:id]
		json $cakes[id.to_i]
	end

	#CREATE
	post "/api/cakes" do
		id = params[:id].to_i
		flavour = params[:flavour]
		layers = params[:layers].to_i
		$cakes.push({id: id, flavour: flavour, layers: layers})
		json $cakes
	end

	#UPDATE
	patch "/api/cakes/:id" do
		id = params[:id]
		"Update cake #{id}"
	end

	#DELETE
	delete "/api/cakes/:id" do
		id = params[:id].to_i
		$cakes.delete_at(id)
		json $cakes
	end

end