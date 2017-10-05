class Album < ApplicationRecord
  has_many :albums_song
  has_many :songs, through: :albums_song
end
