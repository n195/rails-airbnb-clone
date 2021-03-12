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
nona = User.create(email: 'nona@test.fr', password: 'azerty')
margaux = User.create(email: 'margaux@test.fr', password: 'azerty')
pierre = User.create(email: 'pierre@test.fr', password: 'azerty')
User.create(email: 'mucahid@test.fr', password: 'azerty')

puts "Users: #{User.count}"

piece_one = Piece.create( name:'Jean Louis David', price:'210€', creation_date:'2008', photo_url:'https://images.unsplash.com/photo-1554188248-986adbb73be4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', description:'London-based illustrator Miles Johnston (previously) produces graphite drawings and oil paintings that examine the inner thoughts of his female subjects.' )
Piece.create(user: User.first, name:'Sculpture', price:'200€', creation_date:'2012', photo_url:'https://images.unsplash.com/photo-1547826039-bfc35e0f1ea8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1866&q=80', description:'Nouveau Silence est en Or Personne humaine Abstraite Statue Ornement' )
Piece.create(user: User.first, name:'Isis', price:'150€', creation_date:'2020', photo_url:'https://images.unsplash.com/photo-1536924940846-227afb31e2a5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1494&q=80', description:'Portrait de femme illustration / Reproduction Peinture sur toile ou Impression')
Piece.create(user: User.first, name:'Peinture de pissenlits', price:'120€', creation_date:'2000', photo_url:'https://images.unsplash.com/photo-1569172122301-bc5008bc09c5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', description:'Boules de tête de graine petite peinture acrylique sur la toile' )
Piece.create(user: User.first, name:'Lady with an Ermine', price:'140€', creation_date:'2020', photo_url:'https://images.unsplash.com/flagged/photo-1572392640988-ba48d1a74457?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80', description:'Copie faite à la main de la peinture célèbre' )
Piece.create(user: User.first, name:'La Persistance de la mémoire', price:'210€', creation_date:'1931', photo_url:'https://images.unsplash.com/photo-1574291814206-363acdf2aa79?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=933&q=80', description:'Huile sur toile, paysage, nature morte ' )
Piece.create(user: User.first, name:'Le Penseur', price:'140€', creation_date:'1880', photo_url:'https://images.unsplash.com/photo-1581306898857-21401dcca49b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2090&q=80', description:'Sculpture en bronze' )
Piece.create(user: User.first, name:'Le Baiser', price:'120€', creation_date:'1908-1909', photo_url:'https://images.unsplash.com/photo-1523554888454-84137e72c3ce?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua' )
Piece.create(user: User.first, name:'Vase', price:'800€', creation_date:'2014', photo_url:'https://images.unsplash.com/photo-1581085173515-7632824993fb?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', description:'inspirés d\'oeuvres d\'Henri Matisse' )
Piece.create(user: User.first, name:'La Joconde', price:'1 000€', creation_date:'entre 1503 et 1506', photo_url:'https://images.unsplash.com/photo-1608322387167-3bda413a31cc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=975&q=80', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua' )



puts "Pieces: #{Piece.count}"

# Nona prête la piece à pierre
Booking.create!(
  date: 2022,
  user: pierre,
  piece: piece_one
)


#Pierre prête sa piece two à margaux
Booking.create!(
  date: 2023,
  user: margaux,
  piece: piece_two
)

puts "Bookings: #{Booking.count}"
