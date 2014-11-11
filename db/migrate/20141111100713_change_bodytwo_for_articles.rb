class ChangeBodytwoForArticles < ActiveRecord::Migration
  def change
	 	change_column :articles, :bodytwo, :text, :limit => nil
  end
end
