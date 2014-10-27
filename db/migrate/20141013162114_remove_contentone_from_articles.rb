class RemoveContentoneFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :subheadingone, :string
    remove_column :articles, :contentone, :string
    remove_column :articles, :subheadingtwo, :string
    remove_column :articles, :contenttwo, :string
    remove_column :articles, :subheadingthree, :string
    remove_column :articles, :contentthree, :string
    remove_column :articles, :subheadingfour, :string
  end
end
