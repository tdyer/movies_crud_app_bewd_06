class AddReleasedYearToMovie < ActiveRecord::Migration
  def change
    add_column :movies, :released_year, :integer
  end
end
