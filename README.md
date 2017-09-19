# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Time Bank

Start with just offers

Once verified, how does the status change? What appears to the useR?

WireFraming - slide for login page, user homepage, offer, request, and search


As a user I can earn and spend hours by offering services using other people’s services
As a user, i can log in
As a user, i can look at other people’s offers and requests
As a user, (if i am logged in) i can click on the offer or request for more info
As a user, i can create my own offer or request
As a user, I can see how many hours I have to spend


// what happens when a task is taken down? Does it appear in a user log?
As a user, i can see my past expenditures? 

Models
Users
	Name
	Email 
	Hours banked - cap negative and positive at 12 hours (could be its own model?)
	Password digest
	Has many offers as poster
	Has many offer-users as Acceptee
	Has many offers as acceptee through offer-users
	//figure out relationship to display people worked with before
	

// like Flatiron b&b where the user can be a guest/host; can be offerer/requester

Requests
	user ID
	Belongs to a user	
	Expiration date?
	category
	Location
	//can have many users accepting

Offers
	user ID
	Belongs to a user
	Has many offer users
	Has many accepted-users through offer-users

	Expiration date?
	Category
	Location 
	//can have many users accepting

JOIN TABLES
Offer-users
Belongs to Offer ID
	Belongs to Accepted user ID
	Verified yes/no
	Number of hours

Request-users
	Request ID
	Accepted user ID
	Verified yes/no
	Number of hours



Components 
App
Home
Users - child of app
Requests - child of user
Offers - child of user
HoursBanked - child of user
FilterRequests - child of requests
FilterOffers - child of offers
Input form for requests / offers

CRUD - can delete or 

Resources:
https://westseattle.timebanks.org/offers
http://hourworld.org/_TimeAndTalents.htm

