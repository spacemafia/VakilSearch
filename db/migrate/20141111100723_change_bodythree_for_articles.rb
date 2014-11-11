class ChangeBodythreeForArticles < ActiveRecord::Migration
  def change
  	change_column :articles, :bodythree, :text, :limit => nil
  end
end
