class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :qone
      t.string :qtwo
      t.string :qthree
      t.string :qfour
      t.string :qfive
      t.string :qsix
      t.string :qseven
      t.string :qeight
      t.integer :user_id

      t.timestamps
    end
  end
end
