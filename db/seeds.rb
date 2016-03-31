# Delete all reviews.
Review.delete_all
# Delete existing movies in the DB
Movie.delete_all  # ActiveRecord method to delete all rows.

# Create three movies
m1 = Movie.create!(name: 'Affliction', rating: 'R', desc: 'Little Dark', length: 123, released_year: 1997)
# create! is a ActiveRecord method to create a DB table row and a instance of the Movie
# The bang, !, just means STOP the running code if there is an error.
m2 = Movie.create!(name: 'Mad Max', rating: 'R', desc: 'Fun', length: 154, released_year: 2015)
m3 = Movie.create!(name: 'Rushmore', rating: 'PG-13', desc: 'Quirky', length: 105, released_year: 1998)
puts "Created 3 movies"


m2.reviews.create!(content: 'Great fun', email: 'moe@foo.com')
m1.reviews.create!(content: 'Boring, ho hum', email: 'larry@foo.com')
m3.reviews.create!(content: "Funny, ha", email: 'curly@foo.com')
m2.reviews.create!(content: 'Action packed', email: 'larry@foo.com')
m1.reviews.create!(content: 'Somber, yet interesting', email: 'curly@foo.com')

puts "Created a couple of movie reviews"
