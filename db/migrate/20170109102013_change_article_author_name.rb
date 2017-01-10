class ChangeArticleAuthorName < ActiveRecord::Migration[5.0]
  def change
    rename_column :articles,:author_id,:user_id
  end
end
