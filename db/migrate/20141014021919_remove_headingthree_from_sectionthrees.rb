class RemoveHeadingthreeFromSectionthrees < ActiveRecord::Migration
  def change
    remove_column :sectionthrees, :headingthree, :string
  end
end
