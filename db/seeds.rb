Song.delete_all
Artist.delete_all


artist1 = Artist.create(name: "Leonard Cohen", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Leonard_Cohen_2187-edited.jpg/800px-Leonard_Cohen_2187-edited.jpg" )
artist2 = Artist.create(name: "Moby", image: "http://www.gosnowmass.com/wp-content/uploads/2015/02/moby_showcase_1.jpg" )
artist3 = Artist.create(name: "The Doors", image: "http://theredshtick.com/wp-content/uploads/2014/07/the-doors.jpg" )
artist4 = Artist.create(name: "Michael Jackson", image: "http://www.mtv.com/shared/promoimages/bands/j/jackson_michael/a-z/Michael%20Jackson%20Getty%2020.jpg" )

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
