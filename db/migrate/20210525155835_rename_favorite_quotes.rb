class RenameFavoriteQuotes < ActiveRecord::Migration[6.1]
  def change
    rename_table :favoritequotes, :favorite_quotes
  end
end
