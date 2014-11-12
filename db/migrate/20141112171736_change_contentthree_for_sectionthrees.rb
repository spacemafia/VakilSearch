class ChangeContentthreeForSectionthrees < ActiveRecord::Migration
  def change
   	change_column :sectionthrees, :contentthree, :text, :limit => nil
  end
end
