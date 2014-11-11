class ChangeBodyoneForArticles < ActiveRecord::Migration
  def change
  	change_column :articles, :bodyone, :text, :limit => nil
  end
end
