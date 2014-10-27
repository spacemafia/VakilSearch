class AddArticleIdToCommentsfour < ActiveRecord::Migration
  def change
    add_column :commentsfours, :article_id, :integer
  end
end
