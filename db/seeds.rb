# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


######### USERS #########

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

Cow.create!(
  name: "Ginette",
  age: 4,
  race: "Charolaise",
  gender: "Female",
  location: "47.1231231, 179.99999999",
  user_id: 2
)

Cow.create!(
  name: "Marguerite",
  age: 2,
  race: "Bordelaise",
  gender: "Female",
  location: "44.12331, 2.9999",
  user_id: 2
)

Cow.create!(
  name: "la noiraude",
  age: 7,
  race: "Prim'Holstein",
  gender: "Female",
  location: "42.1231, 42.99999",
  user_id: 5
)

Cow.create!(
  name: "Bubulle",
  age: 1,
  race: "Limousine",
  gender: "Female",
  location: "54.31231, -5.9999459",
  user_id: 4
)

Cow.create!(
  name: "Badass Boxer",
  age: 5,
  race: "Aubrac",
  gender: "Male",
  location: "23.1231, 1.945899",
  user_id: 7
)

Cow.create!(
  name: "Iron Bill",
  age: 4,
  race: "Armoricaine",
  gender: "Male",
  location: "47.1231231, 179.99999999",
  user_id: 7
)

Cow.create!(
  name: "Bully The Destroyer",
  age: 4,
  race: "Charolaise",
  gender: "Male",
  location: "12.1231, -65.99999",
  user_id: 7
)
