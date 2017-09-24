# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


lauren = User.create(name: "Lauren", email: "lalala", password_digest: "12345") 
rachel = User.create(name: "Rachel", email: "rarara", password_digest: "12345") 
adina = User.create(name: "Adina", email: "aaaaaa", password_digest: "12345") 
rebecca = User.create(name: "Rebecca", email: "rbrbrb", password_digest: "12345")


posts = Post.create([{poster_id: 2, name: "guitar lesson", category: "music", description: "teach me a few songs", location: "boston", expiration_date:'2017-01-30', offer: false, request: true},
 {poster_id: 3, name: "oboe lesson", category: "music", description: "teach me how to play a note", location: "New York", expiration_date:'2017-01-30', offer: false, request: true},
 {poster_id: 1, name: "help plant my garden", category: "gardening", description: "where should i plant things?", location: "boston", expiration_date:'2017-01-30', offer: false, request: true},
{poster_id: 2, name: "nutrition consultation", category: "music", description: "I am a nutritionist and can offer guidance", location: "boston", expiration_date:'2017-01-30', offer: true, request: false}
 ])




