class ChangeHeadingoneForArticles < ActiveRecord::Migration
  def change
  	change_column :articles, :headingone, :text, :limit => nil
  end
end