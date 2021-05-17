class CreateFavoriteQuotes < ActiveRecord::Migration[6.1]
  def change
    create_table :favoritequotes do |t|
      t.integer :quote_id
      t.integer :character_id
      t.integer :user_id
    end
  end
end
