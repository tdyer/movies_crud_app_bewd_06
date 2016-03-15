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

require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
