class CreateSectiontwos < ActiveRecord::Migration
  def change
    create_table :sectiontwos do |t|
      t.string :headingtwo
      t.string :contenttwo
      t.integer :article_id
      t.integer :user_id

      t.timestamps
    end
  end
end
