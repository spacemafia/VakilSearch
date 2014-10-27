class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :user_id
      t.string :introduction
      t.string :subheadingone
      t.string :contentone
      t.string :subheadingtwo
      t.string :contenttwo
      t.string :subheadingthree
      t.string :contentthree
      t.string :subheadingfour
      t.string :contentfour
      t.string :deck

      t.timestamps
    end
    add_index :articles, [:user_id, :created_at]
  end
end
