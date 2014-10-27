class CreateSectionones < ActiveRecord::Migration
  def change
    create_table :sectionones do |t|
      t.string :headingone
      t.string :contentone
      t.integer :article_id
      t.integer :user_id

      t.timestamps
    end
    add_index :sectionones, :headingone
  end
end
