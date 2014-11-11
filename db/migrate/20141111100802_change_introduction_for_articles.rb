class ChangeIntroductionForArticles < ActiveRecord::Migration
  def change
  	change_column :articles, :introduction, :text, :limit => nil
  end
end
