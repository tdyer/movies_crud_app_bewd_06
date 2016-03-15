# Delete existing movies in the DB
Movie.delete_all  # ActiveRecord method to delete all rows.

# Create three movies
Movie.create!(name: 'Affliction', rating: 'R', desc: 'Little Dark', length: 123, released_year: 1997)
# create! is a ActiveRecord method to create a DB table row and a instance of the Movie
# The bang, !, just means STOP the running code if there is an error.
Movie.create!(name: 'Mad Max', rating: 'R', desc: 'Fun', length: 154, released_year: 2015)
Movie.create!(name: 'Rushmore', rating: 'PG-13', desc: 'Quirky', length: 105, released_year: 1998)
puts "Created 3 movies"
