class CreateSectionthrees < ActiveRecord::Migration
  def change
    create_table :sectionthrees do |t|
      t.string :headingthree
      t.string :contentthree
      t.integer :article_id
      t.integer :user_id

      t.timestamps
    end
  end
end
