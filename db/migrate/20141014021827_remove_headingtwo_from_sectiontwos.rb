class RemoveHeadingtwoFromSectiontwos < ActiveRecord::Migration
  def change
    remove_column :sectiontwos, :headingtwo, :string
  end
end
