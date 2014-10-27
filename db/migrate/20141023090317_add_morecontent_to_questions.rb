class AddMorecontentToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :morecontent, :string
  end
end
