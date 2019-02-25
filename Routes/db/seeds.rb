# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all

user = User.create(username: 'Anna')
user2 = User.create(username: 'Connor')
user3 = User.create(username: 'Greg')
user4 = User.create(username: 'Mark')


art = Artwork.create(image_url: 'abd', title: 'A Snowy Night', artist_id: user.id)
art2 = Artwork.create(image_url: 'add', title: 'A Rainy Night', artist_id: user2.id)
art3 = Artwork.create(image_url: 'gbd', title: 'A Sunny Night', artist_id: user3.id)
art4 = Artwork.create(image_url: 'abv', title: 'A Moonlit Night', artist_id: user4.id)

art_share = ArtworkShare.create(viewer_id: user.id, artwork_id: art2.id)
art_share2 = ArtworkShare.create(viewer_id: user2.id, artwork_id: art3.id)
art_share3 = ArtworkShare.create(viewer_id: user3.id, artwork_id: art4.id)
art_share4 = ArtworkShare.create(viewer_id: user4.id, artwork_id: art.id)
