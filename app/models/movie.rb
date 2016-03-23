# == Schema Information
#
# Table name: movies
#
#  id            :integer          not null, primary key
#  name          :string
#  rating        :string
#  desc          :text
#  length        :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  released_year :integer
#

# Subclass of ActiveRecord. So, it has superpower
# in relation to the DB.
class Movie < ActiveRecord::Base
  # Class Constant variable that is an Array of valid ratings
  # Valid Movie Ratings
  RATINGS = ['G', 'PG', 'PG-13', 'R', 'NC-17']

  # validate that the movie has a name.
  # ActiveRecord gives us this validates method.
  # It's first argument is the name of the attribute to validate
  # The next argument is the "type" of validation.
  validates :name, presence: true
  # name must be between 2 and 30 characters
  validates :name, length: {minimum: 2, maximum: 30}
  # name must be unique
  validates :name, uniqueness: {scope: :released_year}

end
