# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


a1 = Album.create!(name: "Best hits of all time", genre: "compliation")
a2 = Album.create!(name: "Car Tunes", genre: "compliation")


s1 = Song.create!(title: "We will rock you", duration: 3.45)
s2 = Song.create!(title: "Thriller", duration: 2.50)
s3 = Song.create!(title: "Set fire to the rain ", duration: 2.32)
s4 = Song.create!(title: "Mr Blue Sky", duration: 5.12)
s5 = Song.create!(title: "Flash Light", duration: 2.11)

AlbumsSong.create!(song_id: s1.id, album_id: a1.id)
AlbumsSong.create!(song_id: s2.id, album_id: a1.id)
AlbumsSong.create!(song_id: s3.id, album_id: a1.id)
AlbumsSong.create!(song_id: s1.id, album_id: a2.id)
AlbumsSong.create!(song_id: s2.id, album_id: a2.id)
AlbumsSong.create!(song_id: s4.id, album_id: a2.id)
AlbumsSong.create!(song_id: s5.id, album_id: a1.id)

puts "Finished Seed...."
