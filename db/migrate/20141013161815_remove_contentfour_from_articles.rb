class RemoveContentfourFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :contentfour, :string
  end
end
