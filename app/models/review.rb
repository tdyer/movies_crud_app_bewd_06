class Review < ActiveRecord::Base
  # The Review has a foreign key to a movie
  # belongs_to is a ActiveRecord method.
  belongs_to :movie

  validates :content, presence: true
  # Validate using a Regular Expression, validation will ONLY occur when we create a review.
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
