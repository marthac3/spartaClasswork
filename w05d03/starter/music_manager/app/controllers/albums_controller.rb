class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @album = Album.new
  end

  def create

    new_album = Album.create(album_params)
    new_album.save

    redirect_to new_album

  end

  def edit
    @album = Album.find(params[:id])
  end

  def update

    album = Album.find(params[:id])
    album.update(album_params)

    redirect_to album
  end

  def destroy
    Album.destroy(params[:id])
    redirect_to albums_url
  end

  protected
  def album_params
    params.require(:album).permit(:name, :genre)
  end
end
