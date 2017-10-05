class BooksController < ApplicationController

	def index
		render :index
	end

	def show
		@id = params[:id]
		render :show
	end

	def new
		render :new
	end

	def edit
	end

	def create
	end

	def update
	end

	def destroy
	end
end