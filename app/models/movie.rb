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
end
