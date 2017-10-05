class Song < ApplicationRecord
	has_many :albums_song
  has_many :albums, through: :albums_song
end
