# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning DB'
Piece.destroy_all
User.destroy_all
User.create(email: 'nona@test.fr', password: 'azerty')
User.create(email: 'margaux@test.fr', password: 'azerty')
User.create(email: 'pierre@test.fr', password: 'azerty')
User.create(email: 'mucahid@test.fr', password: 'azerty')

puts "Users: #{User.count}"

Piece.create!(user: User.first, name:'La Joconde', price:'20 000€', creation_date:'entre 1503 et 1506', photo_url:'mona_lisa.jpg', creator:'Leonard De Vinci', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua' )
Piece.create!(user: User.first, name:'Le Baiser', price:'5 000€', creation_date:'1908-1909', photo_url:'The_Kiss.jpg', creator:'Klimt', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua' )
Piece.create!(user: User.first, name:'La Persistance de la mémoire', price:'7 000€', creation_date:'1931', photo_url:'The_Kiss.jpg', creator:'Salvador Dalí', description:'Huile sur toile, paysage, nature morte ' )
Piece.create!(user: User.first, name:'Le Penseur', price:'12 000€', creation_date:'1880', photo_url:'The_Kiss.jpg', creator:'Auguste Rodin', description:'Sculpture en bronze' )
Piece.create(user: User.first, name:'Le Baiser', price:'5 000€', creation_date:'1908-1909', photo_url:'The_Kiss.jpg', creator:'Klimt', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua' )
Piece.create(user: User.first, name:'Le Baiser', price:'5 000€', creation_date:'1908-1909', photo_url:'The_Kiss.jpg', creator:'Klimt', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua' )
Piece.create(user: User.first, name:'Le Baiser', price:'5 000€', creation_date:'1908-1909', photo_url:'The_Kiss.jpg', creator:'Klimt', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua' )
Piece.create(user: User.first, name:'Le Baiser', price:'5 000€', creation_date:'1908-1909', photo_url:'The_Kiss.jpg', creator:'Klimt', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua' )
Piece.create(user: User.first, name:'Le Baiser', price:'5 000€', creation_date:'1908-1909', photo_url:'The_Kiss.jpg', creator:'Klimt', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua' )
Piece.create(user: User.first, name:'Le Baiser', price:'5 000€', creation_date:'1908-1909', photo_url:'The_Kiss.jpg', creator:'Klimt', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua' )


puts "Pieces: #{Piece.count}"
