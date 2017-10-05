# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


lauren = User.create(name: "Lauren", email: "lalala", location: 'California', password: "1111") 
rachel = User.create(name: "Rachel", email: "rarara", location: 'NYC', password: "1111") 
ariel = User.create(name: "Ariel", email: "aaaaaa", location: 'NYC', password: "1111") 
rebecca = User.create(name: "Rebecca", email: "rbrbrb", location: 'Chicago', password: "1111")
john = User.create(name: "John", email: "jjj", location: 'SF', password: "1111")
meryl = User.create(name: "Meryl", email: "mmm", location: 'Nola', password: "1111")
esti = User.create(name: "Esti", email: "eee", location: 'NYC', password: "1111")
ethan = User.create(name: "Ethan", email: "ero", location: 'BK', password: "1111")
yura = User.create(name: "Yura", email: "yyy", location: 'NYC', password: "1111")
emily = User.create(name: "Emily", email: "eag", location: 'Boston', password: "1111")
luke = User.create(name: "Luke", email: "lp", location: 'NY', password: "1111")



posts = Post.create([{poster_id: 1, name: "guitar lesson", category: "Music", description: "teach me a few songs", location: "boston", expiration_date:'2017-01-30', offer: false, request: true},
 {poster_id: 3, name: "oboe lesson", category: "Music", description: "teach me how to play a note", location: "New York", expiration_date:'2017-01-30', offer: false, request: true},
 {poster_id: 1, name: "help plant my garden", category: "gardening", description: "where should i plant things?", location: "boston", expiration_date:'2017-01-30', offer: false, request: true},
 {poster_id: 2, name: "teach me CSS", category: "Tech", description: "how do i make this look nice?", location: "NYC", expiration_date:'2017-01-30', offer: false, request: true},
 {poster_id: 1, name: "Auth with Jwt tokens", category: "Tech", description: "I made it so you can refresh the page!", location: "nyc", expiration_date:'2017-01-30', offer: true, request: false},
 {poster_id: 3, name: "Yoga", category: "Mindfulness", description: "I can teach some poses", location: "nyc", expiration_date:'2017-01-30', offer: true, request: false},
 {poster_id: 10, name: "cover letter editing", category: "Tech", description: "help please?", location: "nyc", expiration_date:'2017-01-30', offer: false, request: true},
 {poster_id: 4, name: "moving help", category: "MISC", description: "I can carry things", location: "nyc", expiration_date:'2017-01-30', offer: true, request: false},
 {poster_id: 5, name: "driving to Ikea", category: "MISC", description: "I would like to go on a Sunday", location: "nyc", expiration_date:'2017-01-30', offer: false, request: true},
 {poster_id: 6, name: "translating into English", category: "MISC", description: "need a foreign document", location: "boston", expiration_date:'2017-01-30', offer: true, request: false},
 {poster_id: 8, name: "picking out presents", category: "MISC", description: "I am bad at this", location: "nyc", expiration_date:'2017-01-30', offer: false, request: true},
 {poster_id: 1, name: "organizing closets", category: "MISC", description: "I am super organized. also met my husband this way", location: "nyc", expiration_date:'2017-01-30', offer: true, request: false},
 {poster_id: 5, name: "my loop doesnt work", category: "Tech", description: "trying to display by category", location: "nyc", expiration_date:'2017-01-30', offer: false, request: true},
 {poster_id: 7, name: "interior decorating", category: "MISC", description: "I am super organized. also met my husband this way", location: "nyc", expiration_date:'2017-01-30', offer: true, request: false},
 {poster_id: 1, name: "organizing closets", category: "MISC", description: "I am good at this", location: "nyc", expiration_date:'2017-01-30', offer: true, request: false},
 {poster_id: 11, name: "brewing beer", category: "Music", description: "I am a nutritionist and can offer guidance", location: "boston", expiration_date:'2017-01-30', offer: true, request: false}
 ])

transactions = Transaction.create([
	{verified: false, post_id: 2, contacter_id: 11, status: 'pending', hours: 4},
	{verified: false, post_id: 3, contacter_id: 10, status: 'rejected', hours: 2},
	{verified: false, post_id: 1, contacter_id: 8, status: 'pending', hours: 1},
	{verified: false, post_id: 5, contacter_id: 4, status: 'pending', hours: 3},
	{verified: false, post_id: 2, contacter_id: 1, status: 'pending', hours: 2},
	{verified: false, post_id: 4, contacter_id: 3, status: 'accepted', hours: 3},
	{verified: false, post_id: 6, contacter_id: 1, status: 'pending', hours: 2},
	{verified: false, post_id: 9, contacter_id: 3, status: 'pending', hours: 1},
	{verified: false, post_id: 8, contacter_id: 2, status: 'pending', hours: 4},
	{verified: false, post_id: 4, contacter_id: 9, status: 'pending', hours: 5},
	{verified: false, post_id: 10, contacter_id: 1, status: 'pending', hours: 3},
	{verified: false, post_id: 3, contacter_id: 1, status: 'accepted', hours: 2},
	{verified: false, post_id: 12, contacter_id: 3, status: 'accepted', hours: 1}
	])


