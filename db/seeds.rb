# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'

User.destroy_all
Cow.destroy_all
Booking.destroy_all

######### USERS #########

puts "Creating users..."



User.create!(
  first_name: "Jean François",
  last_name: "Couillard",
  email: "jean-francois.couillard@gmail.com",
  password: "jcouille++",
  phone_number: "0123456789",
  address: "3 rue du moulin, 256123 Losse-en-Gelaisse"
)

User.create!(
  first_name: "Patrick",
  last_name: "Leclercq",
  email: "patrick-lecq@gmail.com",
  password: "lecq9999999",
  phone_number: "0125267895",
  address: "5 rue du cornichon, 63256 Yste-en-Boule"
)

User.create!(
  first_name: "Gerard",
  last_name: "Lardier",
  email: "lagribgdu56@gmail.com",
  password: "lardg1254g5",
  phone_number: "0653452169",
  address: "6 rue du ruisseau, 56985 Gévomy-sur-Yvette"
)

User.create!(
  first_name: "Monique",
  last_name: "Guichard",
  email: "momoguiguich@gmail.com",
  password: "mg123abc++",
  phone_number: "0458263521",
  address: "125 av Marcel Peretto, 15263 Saint-Jean-de-Cuculles"
)

User.create!(
  first_name: "Jean Michel",
  last_name: "Tricard",
  email: "jmtrick@gmail.com",
  password: "trikkkk666",
  phone_number: "0458263853",
  address: "12 chemin du belier, 52569 Fourqueux-sur-Marne"
)

User.create!(
  first_name: "Marcel",
  last_name: "Boursier",
  email: "marcel-boursier@gmail.com",
  password: "mrbrxx123GG",
  phone_number: "0458223125",
  address: "8 rue du champ, 52569 Champigny-les-deux-Eglises"
)

User.create!(
  first_name: "Johnny",
  last_name: "McBrown",
  email: "johnny-mcbrown@gmail.com",
  password: "americafirstbaby",
  phone_number: "0565821252",
  address: "7304 Coventry Cir North Richland Hills, Texas(TX), 76180"
)

######### COWS #########

puts "Creating cows..."

cow = Cow.new(
  name: "Ginette",
  age: 4,
  race: "Charolaise",
  gender: "Female",
  location: "47.1231231, 179.99999999",
  price: 15,
  rating: 5,
  description: "Nice and lovely cow, full of tenderness",
  user: User.first
)
file = URI.open('https://res.cloudinary.com/dw25hg2ws/image/upload/v1685454868/Rent%20A%20Cow/cow17_h9q13t.jpg')
cow.photo.attach(io: file, filename: "cow17_h9q13t.jpg", content_type: "image/png")
cow.save

cow = Cow.new(
  name: "Marguerite",
  age: 2,
  race: "Bordelaise",
  gender: "Female",
  location: "44.12331, 2.9999",
  price: 23,
  rating: 4.7,
  description: "Gentille mais farouche, à dompter",
  user: User.find_by(email: "patrick-lecq@gmail.com")
)
file = URI.open('https://res.cloudinary.com/dw25hg2ws/image/upload/v1685454868/Rent%20A%20Cow/cow18_oeqyz6.jpg')
cow.photo.attach(io: file, filename: "cow17_h9q13t.jpg", content_type: "image/png")
cow.save

cow = Cow.new(
  name: "la noiraude",
  age: 7,
  race: "Prim'Holstein",
  gender: "Female",
  location: "42.1231, 42.99999",
  price: 12,
  rating: 3.9,
  description: "attention, n'aime pas les roux.",
  user: User.find_by(email: "jmtrick@gmail.com")
)
file = URI.open('https://res.cloudinary.com/dw25hg2ws/image/upload/v1685454868/Rent%20A%20Cow/cow20_tc3kxe.jpg')
cow.photo.attach(io: file, filename: "cow17_h9q13t.jpg", content_type: "image/png")
cow.save

cow = Cow.new(
  name: "Bubulle",
  age: 1,
  race: "Limousine",
  gender: "Female",
  location: "54.31231, -5.9999459",
  price: 5,
  rating: 4.9,
  description: "petit veau limousin très placide, demande beaucoup d'affection.",
  user: User.find_by(email: "jmtrick@gmail.com")
)
file = URI.open('https://res.cloudinary.com/dw25hg2ws/image/upload/v1685454868/Rent%20A%20Cow/cow10_dmn3lv.jpg')
cow.photo.attach(io: file, filename: "cow17_h9q13t.jpg", content_type: "image/png")
cow.save

cow = Cow.new(
  name: "Sandy The Princess",
  age: 3,
  race: "Ferrandaise",
  gender: "Female",
  location: "45.1231, -5.99999",
  price: 185,
  rating: 5,
  description: "High-end premium cow, only for rich people",
  user: User.last
)
file = URI.open('https://res.cloudinary.com/dw25hg2ws/image/upload/v1685454868/Rent%20A%20Cow/cow12_rxhnbh.jpg')
cow.photo.attach(io: file, filename: "cow17_h9q13t.jpg", content_type: "image/png")
cow.save!

cow = Cow.new(
  name: "Badass Boxer",
  age: 5,
  race: "Aubrac",
  gender: "Male",
  location: "23.1231, 1.945899",
  price: 55,
  rating: 4.2,
  description: "looks cool but is terrific",
  user: User.last
)
file = URI.open('https://res.cloudinary.com/dw25hg2ws/image/upload/v1685454868/Rent%20A%20Cow/cow14_bfc3dl.jpg')
cow.photo.attach(io: file, filename: "cow17_h9q13t.jpg", content_type: "image/png")
cow.save

cow = Cow.new(
  name: "Iron Bill",
  age: 4,
  race: "Armoricaine",
  gender: "Male",
  location: "47.1231231, 179.99999999",
  price: 75,
  rating: 4.6,
  description: "Nice and lovely cow, full of tenderness",
  user: User.last
)
file = URI.open('https://res.cloudinary.com/dw25hg2ws/image/upload/v1685454867/Rent%20A%20Cow/cow9_nlroql.jpg')
cow.photo.attach(io: file, filename: "cow17_h9q13t.jpg", content_type: "image/png")
cow.save

cow = Cow.new(
  name: "Bully The Destroyer",
  age: 8,
  race: "Charolaise",
  gender: "Male",
  location: "12.1231, -65.99999",
  price: 52,
  rating: 5,
  description: "Nice and lovely bull, full of tenderness, you'll fall in love instantly.",
  user: User.last
)
file = URI.open('https://res.cloudinary.com/dw25hg2ws/image/upload/v1685454867/Rent%20A%20Cow/cow8_tmhh8n.jpg')
cow.photo.attach(io: file, filename: "cow17_h9q13t.jpg", content_type: "image/png")
cow.save

cow = Cow.new(
  name: "Yvonne",
  age: 8,
  race: "Prim'Holstein",
  gender: "Female",
  location: "44.1231, -1.9299",
  price: 15,
  rating: 3.6,
  description: "",
  user: User.find_by(email: "marcel-boursier@gmail.com")
)
file = URI.open('https://res.cloudinary.com/dw25hg2ws/image/upload/v1685454868/Rent%20A%20Cow/cow23_al8hbw.jpg')
cow.photo.attach(io: file, filename: "cow17_h9q13t.jpg", content_type: "image/png")
cow.save

cow = Cow.new(
  name: "Tarine Le Pen",
  age: 2,
  race: "Tarine",
  gender: "Female",
  location: "1.1231, -65.99999",
  price: 35,
  rating: 3.3,
  description: "charmante mais n'aime pas les haut-savoyards",
  user: User.find_by(email: "lagribgdu56@gmail.com")
)
file = URI.open('https://res.cloudinary.com/dw25hg2ws/image/upload/v1685454867/Rent%20A%20Cow/cow7_t0wp9y.jpg')
cow.photo.attach(io: file, filename: "cow17_h9q13t.jpg", content_type: "image/png")
cow.save

cow = Cow.new(
  name: "Pars à Veau l'Eau",
  age: 1,
  race: "Limousine",
  gender: "Male",
  location: "1.1231, -65.99999",
  price: 5,
  rating: 2.2,
  description: "",
  user: User.find_by(email: "momoguiguich@gmail.com")
)
file = URI.open('https://res.cloudinary.com/dw25hg2ws/image/upload/v1685454868/Rent%20A%20Cow/cow21_bm0fyu.jpg')
cow.photo.attach(io: file, filename: "cow17_h9q13t.jpg", content_type: "image/png")
cow.save

cow = Cow.new(
  name: "Ginger Beauty",
  age: 5,
  race: "Limousine",
  gender: "Female",
  location: "45.1231, -5.94599",
  price: 105,
  rating: 4.7,
  description: "Rare and precious",
  user: User.last
)
file = URI.open('https://res.cloudinary.com/dw25hg2ws/image/upload/v1685454867/Rent%20A%20Cow/cow6_mutbm6.jpg')
cow.photo.attach(io: file, filename: "cow17_h9q13t.jpg", content_type: "image/png")
cow.save

cow = Cow.new(
  name: "Cow-Cow Chanel",
  age: 5,
  race: "Parthenaise",
  gender: "Female",
  location: "57.1231, 11.94599",
  price: 35,
  rating: 4.4,
  description: "sent bon",
  user: User.find_by(email: "momoguiguich@gmail.com")
)
file = URI.open('https://res.cloudinary.com/dw25hg2ws/image/upload/v1685454868/Rent%20A%20Cow/cow15_cq7rjt.jpg')
cow.photo.attach(io: file, filename: "cow17_h9q13t.jpg", content_type: "image/png")
cow.save

cow = Cow.new(
  name: "Ajax",
  age: 2,
  race: "Salers",
  gender: "Male",
  location: "24.1231, -8.94599",
  price: 23,
  rating: 4.1,
  description: "vache",
  user: User.find_by(email: "momoguiguich@gmail.com")
)
file = URI.open('https://res.cloudinary.com/dw25hg2ws/image/upload/v1685454868/Rent%20A%20Cow/cow19_jkfgvg.jpg')
cow.photo.attach(io: file, filename: "cow17_h9q13t.jpg", content_type: "image/png")
cow.save

cow = Cow.new(
  name: "Pawline la limousine",
  age: 3,
  race: "Limousine",
  gender: "Female",
  location: "24.1231, -8.94599",
  price: 42,
  rating: 5,
  description: "très sympathique mais meugle beaucoup",
  user: User.find_by(email: "momoguiguich@gmail.com")
)
file = URI.open('https://res.cloudinary.com/dw25hg2ws/image/upload/v1685698954/Rent%20A%20Cow/vache-limousin_pw1umi.jpg')
cow.photo.attach(io: file, filename: "cow17_h9q13t.jpg", content_type: "image/png")
cow.save

#### Bookings

puts "creating bookings"

Booking.create!(
  date: DateTime.new(2023,7,1,1,1,1),
  cow: Cow.first,
  user: User.find_by(email: "patrick-lecq@gmail.com")
)

Booking.create!(
  date: DateTime.new(2023,9,10,1,1,1),
  cow: Cow.find_by(name: "Marguerite"),
  user: User.first
)

puts "seed planted!"

########### BOOKINGS ############

booking = Booking.new(
  date: Date.current.tomorrow,
  cow: Cow.find_by(name: "Ginette"),
  user: User.find_by(email: "patrick-lecq@gmail.com")
)

booking = Booking.create!(
  date: Date.current,
  cow: Cow.find_by(name: "Ginette"),
  user: User.find_by(email: "patrick-lecq@gmail.com")
)

booking = Booking.create!(
  date: Date.current,
  cow: Cow.find_by(name: "Badass Boxer"),
  user: User.find_by(email: "patrick-lecq@gmail.com")
)

booking = Booking.create!(
  date: Date.current.yesterday,
  cow: Cow.find_by(name: "Pars à Veau l'Eau"),
  user: User.find_by(email: "patrick-lecq@gmail.com")
)

booking = Booking.create!(
  date: Date.current,
  cow: Cow.find_by(name: "Pars à Veau l'Eau"),
  user: User.find_by(email: "patrick-lecq@gmail.com")
)

booking = Booking.create!(
  date: Date.current,
  cow: Cow.find_by(name: "Yvonne"),
  user: User.find_by(email: "jmtrick@gmail.com")
)

booking = Booking.create!(
  date: Date.current,
  cow: Cow.find_by(name: "Yvonne"),
  user: User.find_by(email: "johnny-mcbrown@gmail.com")
)

booking = Booking.create!(
  date: Date.current,
  cow: Cow.find_by(name: "Yvonne"),
  user: User.find_by(email: "johnny-mcbrown@gmail.com")
)
