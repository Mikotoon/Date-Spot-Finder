class AddTitleAndPlaceAndPriceAndTimeAndMapToTweets < ActiveRecord::Migration[7.2]
  def change
    add_column :tweets, :title, :string
    add_column :tweets, :place, :string
    add_column :tweets, :price, :string
    add_column :tweets, :time, :string
    add_column :tweets, :map, :string
  end
end
