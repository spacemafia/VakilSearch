class RemoveSlugFromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :slug, :string
  end
end
