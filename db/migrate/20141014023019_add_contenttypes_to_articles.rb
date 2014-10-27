class AddContenttypesToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :headingone, :string
    add_column :articles, :bodyone, :string
    add_column :articles, :headingtwo, :string
    add_column :articles, :bodytwo, :string
    add_column :articles, :headingthree, :string
    add_column :articles, :bodythree, :string
    add_column :articles, :headingfour, :string
    add_column :articles, :bodyfour, :string
  end
end
