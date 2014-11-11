class AddBodyfiveToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :bodyfive, :text
  end
end
