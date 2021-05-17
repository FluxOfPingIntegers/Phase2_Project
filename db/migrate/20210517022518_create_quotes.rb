class CreateQuotes < ActiveRecord::Migration[6.1]
  def change
    create_table :quotes do |t|
      t.integer :character_id
      t.string :content
      t.string :movie
      t.string :api_id
    end
  end
end
