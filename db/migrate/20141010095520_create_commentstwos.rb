class CreateCommentstwos < ActiveRecord::Migration
  def change
    create_table :commentstwos do |t|
      t.string :commentstwo
      t.string :user_id
      t.string :sectiontwo_id

      t.timestamps
    end
  end
end
