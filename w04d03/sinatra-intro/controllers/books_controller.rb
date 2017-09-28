class BooksController < Sinatra::Base

	configure :development do
     register Sinatra::Reloader
  end
  
	#INDEX - get all the books
	get "/books" do
		"ALL THE BOOKS"
	end

	#NEW - form for new book
	get "/books/new" do
		"NEW BOOK FORM"
	end

	#SHOW - get one book
	get "/books/:id" do
		id = params[:id]
		"BOOK #{id}"
	end

	#CREATE - sends form to create new book
	post "/books" do
		"NEW BOOK CREATED"
	end

	#EDIT - get form to edit book
	get "/books/:id/edit" do
		id = params[:id]
		"FORM TO EDIT BOOK #{id}"
	end

	#UPDATE - update entry for book
	patch "/books/:id" do
		id = params[:id]
		"UPDATE ENTRY FOR BOOK #{id}"
	end

	#DELETE - delete a book
	delete "/books/:id" do
		id = params[:id]
		"DELETE BOOK #{id}"
	end
end