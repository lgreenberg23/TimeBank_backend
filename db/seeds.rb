# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


lauren = User.create(name: "Lauren", email: "lalala", location: 'California', password: "12345") 
rachel = User.create(name: "Rachel", email: "rarara", location: 'NYC', password: "12345") 
ariel = User.create(name: "Ariel", email: "aaaaaa", location: 'NYC', password: "12345") 
rebecca = User.create(name: "Rebecca", email: "rbrbrb", location: 'Chicago', password: "12345")
rebecca = User.create(name: "John", email: "jjj", location: 'SF', password: "12345")



posts = Post.create([{poster_id: 2, name: "guitar lesson", category: "music", description: "teach me a few songs", location: "boston", expiration_date:'2017-01-30', offer: false, request: true},
 {poster_id: 3, name: "oboe lesson", category: "music", description: "teach me how to play a note", location: "New York", expiration_date:'2017-01-30', offer: false, request: true},
 {poster_id: 1, name: "help plant my garden", category: "gardening", description: "where should i plant things?", location: "boston", expiration_date:'2017-01-30', offer: false, request: true},
 {poster_id: 2, name: "teach me CSS", category: "Tech", description: "how do i make this look nice?", location: "NYC", expiration_date:'2017-01-30', offer: false, request: true},
 {poster_id: 1, name: "Auth with Jwt tokens", category: "Tech", description: "I made it so you can refresh the page!", location: "nyc", expiration_date:'2017-01-30', offer: true, request: false},
 {poster_id: 3, name: "Yoga", category: "Mindfulness", description: "I can teach some poses", location: "nyc", expiration_date:'2017-01-30', offer: true, request: false},
 {poster_id: 1, name: "cover letter editing", category: "Tech", description: "help please?", location: "nyc", expiration_date:'2017-01-30', offer: false, request: true},
{poster_id: 2, name: "nutrition consultation", category: "music", description: "I am a nutritionist and can offer guidance", location: "boston", expiration_date:'2017-01-30', offer: true, request: false}
 ])

transactions = Transaction.create([
	{verified: false, post_id: 2, contacter_id: 1, status: 'pending', hours: 4},
	{verified: false, post_id: 3, contacter_id: 2, status: 'rejected', hours: 2},
	{verified: false, post_id: 1, contacter_id: 3, status: 'pending', hours: 1},
	{verified: false, post_id: 5, contacter_id: 4, status: 'pending', hours: 3},
	{verified: false, post_id: 2, contacter_id: 1, status: 'pending', hours: 3},
	{verified: false, post_id: 4, contacter_id: 3, status: 'accepted', hours: 3}
	])


