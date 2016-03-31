class Review < ActiveRecord::Base
  # The Review has a foreign key to a movie
  # belongs_to is a ActiveRecord method.
  belongs_to :movie
end
