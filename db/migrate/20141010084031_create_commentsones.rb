class CreateCommentsones < ActiveRecord::Migration
  def change
    create_table :commentsones do |t|
      t.string :commentsone
      t.string :user_id
      t.string :sectionone_id

      t.timestamps
    end
  end
end
