class RemoveHeadingOneFromSectionones < ActiveRecord::Migration
  def change
    remove_column :sectionones, :headingone, :string
  end
end
