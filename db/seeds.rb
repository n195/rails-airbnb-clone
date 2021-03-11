# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning DB'
Booking.destroy_all
Piece.destroy_all
User.destroy_all

User.create(email: 'nona@test.fr', password: 'azerty')
User.create(email: 'margaux@test.fr', password: 'azerty')
User.create(email: 'pierre@test.fr', password: 'azerty')
User.create(email: 'mucahid@test.fr', password: 'azerty')

puts "Users: #{User.count}"

Piece.create(user: User.first, name:'Withdraw', price:'210€', creation_date:'2018', photo_url:'artpiece1.jpg', description:'London-based illustrator Miles Johnston (previously) produces graphite drawings and oil paintings that examine the inner thoughts of his female subjects.' )
Piece.create(user: User.first, name:'Le désespére', price:'800€', creation_date:'1843-1845', photo_url:'Le_Désespéré.jpg', description:'Type	Autoportrait, Technique: Huile sur toile, Dimensions : (H × L)45 × 54 cm' )
Piece.create(user: User.first, name:'Sculpture', price:'200€', creation_date:'2012', photo_url:'visage.jpg', description:'Nouveau Silence est en Or Personne humaine Abstraite Statue Ornement' )
Piece.create(user: User.first, name:'Isis', price:'150€', creation_date:'2020', photo_url:'1.jpg', description:'Portrait de femme illustration / Reproduction Peinture sur toile ou Impression')
Piece.create(user: User.first, name:'Peinture de pissenlits', price:'120€', creation_date:'2000', photo_url:'2.jpg', description:'Boules de tête de graine petite peinture acrylique sur la toile' )
Piece.create(user: User.first, name:'Lady with an Ermine', price:'140€', creation_date:'2020', photo_url:'2.jpg', description:'Copie faite à la main de la peinture célèbre' )
Piece.create(user: User.first, name:'La Persistance de la mémoire', price:'210€', creation_date:'1931', photo_url:'The_Kiss.jpg', description:'Huile sur toile, paysage, nature morte ' )
Piece.create(user: User.first, name:'Le Penseur', price:'140€', creation_date:'1880', photo_url:'The_Kiss.jpg', description:'Sculpture en bronze' )
Piece.create(user: User.first, name:'Le Baiser', price:'120€', creation_date:'1908-1909', photo_url:'The_Kiss.jpg', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua' )
Piece.create(user: User.first, name:'Vase', price:'800€', creation_date:'2014', photo_url:'vase.jpg', description:'inspirés d\'oeuvres d\'Henri Matisse' )
Piece.create(user: User.first, name:'La Joconde', price:'1 000€', creation_date:'entre 1503 et 1506', photo_url:'mona_lisa.jpg', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua' )



puts "Pieces: #{Piece.count}"