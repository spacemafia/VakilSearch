class RemoveBodyfiveFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :bodyfive, :text
  end
end
