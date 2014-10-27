class CreateCommentsthrees < ActiveRecord::Migration
  def change
    create_table :commentsthrees do |t|
      t.string :commentsthree
      t.string :user_id
      t.string :sectionthree_id

      t.timestamps
    end
  end
end
