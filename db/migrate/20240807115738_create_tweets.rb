class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.text :name
      t.string :price
      t.text :link

      t.timestamps
    end
  end
end
