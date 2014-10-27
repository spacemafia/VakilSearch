class CreateCommentsfours < ActiveRecord::Migration
  def change
    create_table :commentsfours do |t|
      t.string :commentsfour
      t.string :user_id
      t.string :sectionfour_id

      t.timestamps
    end
  end
end
