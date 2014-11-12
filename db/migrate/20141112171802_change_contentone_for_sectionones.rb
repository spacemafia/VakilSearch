class ChangeContentoneForSectionones < ActiveRecord::Migration
  def change
   	change_column :sectionones, :contentone, :text, :limit => nil
  end
end
