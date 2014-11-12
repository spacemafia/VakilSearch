class ChangeContenttwoForSectiontwos < ActiveRecord::Migration
  def change
   	change_column :sectiontwos, :contenttwo, :text, :limit => nil
  end
end
