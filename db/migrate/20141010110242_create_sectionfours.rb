class CreateSectionfours < ActiveRecord::Migration
  def change
    create_table :sectionfours do |t|
      t.string :headingfour
      t.string :contentfour
      t.integer :article_id
      t.integer :user_id

      t.timestamps
    end
  end
end
