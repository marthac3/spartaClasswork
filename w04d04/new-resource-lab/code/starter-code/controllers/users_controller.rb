class UsersController < Sinatra::Base

	# sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Turn on Sinatra Reloader
  configure :development do
      register Sinatra::Reloader
  end

  $users = [{
      id: 0,
      email: "abell1@email.com",
      firstname: "Abby",
      lastname: "Bell",
      age: 20
  },
  {
      id: 1,
      email: "cduke2@email.com",
      firstname: "Charlie",
      lastname: "Duke",
      age: 21
  },
  {
      id: 2,
      email: "efish3@email.com",
      firstname: "Ellie",
      lastname: "Fish",
      age: 22
  }]

  get '/users' do

      @title = "Users"

      @users = $users
  
      erb :'users/index'
  
  end

  get '/users/new'  do

    # create an empty post
    @user = {
      id: "",
      firstname: "",
      lastname: "",
      email: "",
      age: ""
    }

    erb :'users/new'
    
  end
    
  get '/users/:id' do
    
    # get the ID and turn it in to an integer
    id = params[:id].to_i

    # make a single post object available in the template
    @user = $users[id]
    
    erb :'users/show'
    
  end
    
  post '/users' do
    
    new_user = {
      id: params[:id],
      firstname: params[:firstname],
      lastname: params[:lastname],
      email: params[:email],
      age: params[:age]
    }

    $users.push new_user

    redirect "/users"
    
  end
    
  put '/users/:id'  do
    
    # data is gathered in the params object
    id = params[:id].to_i
      
    # get the post object from our data store
    user = $users[id]
      
    # update the values of the object with data from the request
    user[:firstname] = params[:firstname]
    user[:lastname] = params[:lastname]
    user[:email] = params[:email]
    user[:age] = params[:age]
      
    # save the post back to our data store ( at the spot it came from this time )
    $users[id] = user
      
    # redirect the user to a GET route. We'll go back to the INDEX.
    redirect "/users"
    
  end
    
  delete '/users/:id'  do
    
    # get the ID
    id = params[:id].to_i

    # delete the post from the array
    $users.delete_at(id)

    # redirect back to the homepage
    redirect "/users"
    
  end
    
  get '/users/:id/edit'  do
    
    # get the ID and turn it in to an integer
    id = params[:id].to_i

    # make a single post object available in the template
    @user = $users[id]

    erb :'users/edit'
    
  end

end