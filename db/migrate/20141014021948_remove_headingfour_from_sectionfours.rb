class RemoveHeadingfourFromSectionfours < ActiveRecord::Migration
  def change
    remove_column :sectionfours, :headingfour, :string
  end
end
