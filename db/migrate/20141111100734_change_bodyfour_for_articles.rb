class ChangeBodyfourForArticles < ActiveRecord::Migration
  def change
  	change_column :articles, :bodyfour, :text, :limit => nil
  end
end
