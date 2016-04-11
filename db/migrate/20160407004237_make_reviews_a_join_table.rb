class MakeReviewsAJoinTable < ActiveRecord::Migration
  # Invoke when we do rake db:migrate, migrate up.
  def up
    # Remove all the rows before changing the schema
    Review.delete_all
    remove_column :reviews, :email
    # Add a FK to the users table
    add_column :reviews, :user_id, :integer
  end

  # Invoked when migrating down or rolling back via
  # rake db:rollback
  def down
    Review.delete_all
    add_column :reviews, :email, :string
    remove_column :reviews, :user_id
  end
end
