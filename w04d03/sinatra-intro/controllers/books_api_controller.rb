class BooksApiController < Sinatra::Base
    
    configure :development do
    register Sinatra::Reloader
  end

  $books = [
      { 
          id: 0,
          title: "The Cat In The Hat",
          author: "Dr Seuss"
      },
      { 
          id: 1,
          title: "Green Eggs And Ham",
          author: "Dr Seuss"
      },
      { 
          id: 2,
          title: "The Wordsmith",
          author: "Ollie Holden"
      }
  ]
  
    #INDEX - get all the books
    get "/api/books" do
        json $books
    end

    #SHOW - gets one book
    get '/books/:id' do
        id = params[:id]
        "BOOK #{id}"
    end

    #CREATE
    post '/books' do
        "SEND FORM TO CREATE NEW BOOK"
    end

    #UPDATE
    put '/books/:id' do
        id = params[:id]
        "UPDATING #{id}"
    end

    #DELETE
    delete '/books/:id' do
        id = params[:id]
        "YOU HAVE DELETED #{id}"
    end
end