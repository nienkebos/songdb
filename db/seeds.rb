Song.delete_all
Artist.delete_all


artist1 = Artist.create( name: "Leonard Cohen", image: "http://res.cloudinary.com/du6v0bsg5/image/upload/v1472387400/Leonard_Cohen_vkibii.jpg" )
artist2 = Artist.create( name: "Moby", image: "http://res.cloudinary.com/du6v0bsg5/image/upload/v1472387471/moby_j6k7mg.jpg" )
artist3 = Artist.create( name: "The Doors", image: "http://res.cloudinary.com/du6v0bsg5/image/upload/v1472387531/the-doors_qhsa3b.jpg" )
artist4 = Artist.create( name: "Michael Jackson", image: "http://res.cloudinary.com/du6v0bsg5/image/upload/v1472387576/Michael-Jackson_pamzp3.jpg" )

Song.create([
  { title: "Famous blue raincoat", artist: artist1 },
  { title: "Suzanne", artist: artist1 },
  { title: "The future", artist: artist1 },
  { title: "Show me the place", artist: artist1 },
  { title: "Why does my heart feel so bad?", artist: artist2 },
  { title: "The sky is broken", artist: artist2 },
  { title: "7", artist: artist2 },
  { title: "Light my fire", artist: artist3 },
  { title: "Moonlight drive", artist: artist3 },
  { title: "You're lost little girl", artist: artist3 },
  { title: "Thriller", artist: artist4 },
  { title: "Black or white", artist: artist4 },
  { title: "Billy Jean", artist: artist4 }
])



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
