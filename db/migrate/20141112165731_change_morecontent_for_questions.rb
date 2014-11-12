class ChangeMorecontentForQuestions < ActiveRecord::Migration
  def change
  	change_column :questions, :morecontent, :text, :limit => nil
  end
end
