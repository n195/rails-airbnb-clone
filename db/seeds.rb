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
Piece.create(user: User.first, name:'Sunday Bloody Sunday', price:'145€', creation_date:'1983', photo_url:'https://images.unsplash.com/photo-1563050860-87d45eaaeabb?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1952&q=80', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua' )
Piece.create(user: User.first, name:'Space Oddity', price:'145€', creation_date:'1977', photo_url:'https://images.unsplash.com/photo-1515405295579-ba7b45403062?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=80', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua' )
Piece.create(user: User.first, name:'Embryonic Journey', price:'145€', creation_date:'1969', photo_url:'https://images.unsplash.com/photo-1578301978693-85fa9c0320b9?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1520&q=80', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua' )
Piece.create(user: User.first, name:'Starman', price:'145€', creation_date:'2001', photo_url:'https://images.unsplash.com/photo-1578223408020-8c3058e1568c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1951&q=80', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua' )
Piece.create(user: User.first, name:'Suspicious Minds', price:'145€', creation_date:'2011', photo_url:'https://images.unsplash.com/photo-1576973643465-ea4842848d7e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1996&q=80', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua' )
Piece.create(user: User.first, name:'High and Dry', price:'120€', creation_date:'1908-1909', photo_url:'https://images.unsplash.com/photo-1523554888454-84137e72c3ce?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua' )
Piece.create(user: User.first, name:'School', price:'555€', creation_date:'entre 1503 et 1506', photo_url:'https://images.unsplash.com/photo-1608322387167-3bda413a31cc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=975&q=80', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua' )
Piece.create(user: User.first, name:'Twelve Thirty', price:'1 000€', creation_date:'1506', photo_url:'https://images.unsplash.com/photo-1554188248-986adbb73be4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua' )
Piece.create(user: User.first, name:'Age of Consent', price:'150€', creation_date:'2002', photo_url:'https://images.unsplash.com/photo-1482160549825-59d1b23cb208?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua' )
Piece.create(user: User.first, name:'I Wonder', price:'320', creation_date:'1999', photo_url:'https://images.unsplash.com/photo-1585111791896-df448ff664f9?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=2089&q=80  ', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua' )
Piece.create(user: User.first, name:'Mrs.Robinson', price:'200€', creation_date:'2012', photo_url:'https://images.unsplash.com/photo-1547826039-bfc35e0f1ea8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1866&q=80', description:'Nouveau Silence est en Or Personne humaine Abstraite Statue Ornement' )
Piece.create(user: User.first, name:'Fortunate Son', price:'150€', creation_date:'2020', photo_url:'https://images.unsplash.com/photo-1536924940846-227afb31e2a5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1494&q=80', description:'Portrait de femme illustration / Reproduction Peinture sur toile ou Impression')
Piece.create(user: User.first, name:'Bitter Sweet Symphony', price:'120€', creation_date:'2000', photo_url:'https://images.unsplash.com/photo-1569172122301-bc5008bc09c5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', description:'Boules de tête de graine petite peinture acrylique sur la toile' )
Piece.create(user: User.first, name:'Little Wing', price:'140€', creation_date:'2020', photo_url:'https://images.unsplash.com/photo-1602532305019-3dbbd482dae9?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=975&q=80', description:'Copie faite à la main de la peinture célèbre' )
Piece.create(user: User.first, name:'Are You Lonesome Tonight', price:'210€', creation_date:'1931', photo_url:'https://images.unsplash.com/photo-1612742494452-d1c5aeef156d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=3019&q=80', description:'Sculpture en bronze' )
Piece.create(user: User.first, name:'Mardy Bum', price:'800€', creation_date:'2014', photo_url:'https://images.unsplash.com/photo-1568378814482-f3c60866fc6b?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1922&q=80', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore' )
Piece.create(user: User.first, name:'Son of a Preacher Man', price:'132', creation_date:'1997', photo_url:'https://images.unsplash.com/photo-1545227799-e820ecd5e65c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore' )
Piece.create(user: User.first, name:'Sweet Thing', price:'400', creation_date:'2002', photo_url:'https://images.unsplash.com/photo-1600716887304-382af77ee86f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2850&q=80', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore' )



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
