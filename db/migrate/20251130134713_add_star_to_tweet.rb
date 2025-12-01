class AddStarToTweet < ActiveRecord::Migration[7.2]
  def change
    add_column :tweets, :star, :integer
  end
end
