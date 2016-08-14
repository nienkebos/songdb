
artist1 = Artist.create(name: "Leonard Cohen" )
artist2 = Artist.create(name: "Moby" )
artist3 = Artist.create(name: "The Doors" )
artist4 = Artist.create(name: "Michael Jackson" )

Song.create({title: "Famous blue raincoat", artist: artist1 })
Song.create({title: "Why does my heart feel so bad?", artist: artist2 })
Song.create({title: "Light my fire", artist: artist3 })
Song.create({title: "Thriller", artist: artist4 })



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
