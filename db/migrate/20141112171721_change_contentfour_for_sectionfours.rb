class ChangeContentfourForSectionfours < ActiveRecord::Migration
  def change
    	change_column :sectionfours, :contentfour, :text, :limit => nil
  end
end
