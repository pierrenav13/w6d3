# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.create(username: 'Wood')
artwork_1 = Artwork.create(title: 'Starry Night', image_url: 'url1', artist_id: 1)


user_2 = User.create(username: 'Davinci')
artwork_2 = Artwork.create(title: 'Mona Lisa', image_url: 'url2', artist_id: 2)

user_3 = User.create(username: 'User3')

artwork_3 = Artwork.create(title: 'Vetruvian Man', image_url: 'url3', artist_id: 2)
