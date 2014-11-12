class ChangeAnswerContentForAnswers < ActiveRecord::Migration
  def change
   	change_column :answers, :answer_content, :text, :limit => nil
  end
end
