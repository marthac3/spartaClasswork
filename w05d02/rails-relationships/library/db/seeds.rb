# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dumas = Author.create({ name: 'Alexandre Dumas', net_worth: 500, dob: '1/2/1800' })

tolkien = Author.create({ name: 'J.R.R Tolkien', net_worth: 1000, dob: '3/4/1950'})

book1 = Book.create({ title: 'The Three Musketeers', blurb: 'There are four of them', genre: 'Adventure'})
book2 = Book.create({ title: 'The Count of Monte Christo', blurb: 'Hes stuck', genre: 'Adventure'})
book3 = Book.create({ title: 'The Hobbit', blurb: 'He doesnt like going outside', genre: 'Fantasy'})
book4 = Book.create({ title: 'The Lord of the Rings', blurb: 'Throw a ring in a volcano', genre: 'Fantasy'})
book5 = Book.create({ title: 'The Silmarillion', blurb: 'Elves cause problems', genre: 'Fantasy'})

dumas.books << book1
dumas.books << book2
dumas.save

tolkien.books << book3
tolkien.books << book4
tolkien.books << book5
tolkien.save