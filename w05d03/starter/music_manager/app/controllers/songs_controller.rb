class SongsController < ApplicationController
  def index
    @album = Album.find(params[:album_id])
    @songs = @album.songs
  end

  def show
    @album = Album.find(params[:album_id])
    @song = @album.songs.find(params[:id])
  end

  def new
    @album = Album.find(params[:album_id])
    @song = Song.new
  end

  def create
    album = Album.find(params[:album_id])
    song = album.songs.create(song_params)

    show_page = album_song_path(album.id, song.id)
    redirect_to show_page
  end

  def edit
    @album = Album.find(params[:album_id])
    @song = @album.songs.find(params[:id])
  end

  def update
    album = Album.find(params[:album_id])
    song = album.songs.find(params[:id])
    song.update(song_params)

    redirect_to album_song_path(album.id, song.id)
  end

  def destroy
    Album.find(params[:album_id]).songs.destroy(params[:id])
    redirect_to albums_url
  end

  protected
  def song_params
    params.require(:song).permit(:duration, :title)
  end
end
