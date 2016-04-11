# Delete all reviews.
Review.delete_all
# Delete existing movies in the DB
Movie.delete_all  # ActiveRecord method to delete all rows.
# Delete all existing users in the DB
User.delete_all

# Create three movies
m1 = Movie.create!(name: 'Affliction', rating: 'R', desc: 'Little Dark', length: 123, released_year: 1997)
# create! is a ActiveRecord method to create a DB table row and a instance of the Movie
# The bang, !, just means STOP the running code if there is an error.
m2 = Movie.create!(name: 'Mad Max', rating: 'R', desc: 'Fun', length: 154, released_year: 2015)
m3 = Movie.create!(name: 'Rushmore', rating: 'PG-13', desc: 'Quirky', length: 105, released_year: 1998)
puts "Created 3 movies"

moe = User.create!(email: 'moe@foo.com', password: 'password', password_confirmation: 'password', first_name: 'Moe', last_name: 'Howard', admin: false)
larry = User.create!(email: 'larry@foo.com', password: 'password', password_confirmation: 'password', first_name: 'Larry', last_name: 'Fine', admin: false)
curly = User.create!(email: 'curly@foo.com', password: 'password', password_confirmation: 'password', first_name: 'Curly', last_name: 'Howard', admin: false)

# Create an admin user
tom = User.create!(email: 'tom@foo.com', password: 'password', password_confirmation: 'password', first_name: 'Tom', last_name: 'Jones', admin: true)

puts "Created 4 users, one is an admin"

m2.reviews.create!(content: 'Great fun', user: moe)
m1.reviews.create!(content: 'Boring, ho hum', user: larry)
m3.reviews.create!(content: "Funny, ha", user: curly)
m2.reviews.create!(content: 'Action packed', user: larry)
m1.reviews.create!(content: 'Somber, yet interesting', user: curly)

puts "Created a couple of movie reviews"
