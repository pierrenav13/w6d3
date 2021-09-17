# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
ApplicationRecord.connection.reset_pk_sequence!('users')
Artwork.destroy_all
ApplicationRecord.connection.reset_pk_sequence!('artworks')
ArtworkShare.destroy_all
ApplicationRecord.connection.reset_pk_sequence!('artwork_shares')
Comment.destroy_all
ApplicationRecord.connection.reset_pk_sequence!('comments')


user_1 = User.create(username: 'Wood')
user_2 = User.create(username: 'Pnav')
user_3 = User.create(username: 'Alice')
user_4 = User.create(username: 'Barney')

artwork_1 = Artwork.create(title: '1969', image_url: 'url1', artist_id: user_1.id)
artwork_2 = Artwork.create(title: 'Sky', image_url: 'url2', artist_id: user_2.id)
artwork_3 = Artwork.create(title: 'In Wonderland', image_url: 'url3', artist_id: user_3.id)
artwork_4 = Artwork.create(title: 'Purple Dinosaur Show', image_url: 'url4', artist_id: user_4.id)

share_1 = ArtworkShare.create(artwork_id: artwork_1.id, viewer_id: user_2.id)
share_1 = ArtworkShare.create(artwork_id: artwork_2.id, viewer_id: user_3.id)
share_1 = ArtworkShare.create(artwork_id: artwork_3.id, viewer_id: user_4.id)
share_1 = ArtworkShare.create(artwork_id: artwork_4.id, viewer_id: user_1.id)

comment_1 = Comment.create(user_id: user_1.id, artwork_id: artwork_2.id, body: "comment 1")
comment_2 = Comment.create(user_id: user_2.id, artwork_id: artwork_1.id, body: "comment 2")
comment_3 = Comment.create(user_id: user_3.id, artwork_id: artwork_1.id, body: "comment 3")
comment_4 = Comment.create(user_id: user_4.id, artwork_id: artwork_2.id, body: "comment 4")
