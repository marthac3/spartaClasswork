class CreateAlbumsSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :albums_songs do |t|
      t.integer :song_id
      t.integer :album_id
    end
  end
end
