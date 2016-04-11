class Review < ActiveRecord::Base
  # The Review has a foreign key to a movie
  # belongs_to is a ActiveRecord method.
  belongs_to :movie

  # The Review should have a foreign key to the user
  # that created the review.
  belongs_to :user

  validates :content, presence: true

end
