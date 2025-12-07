class RemoveNotNullFromArticlesBody < ActiveRecord::Migration[8.1]
  def up
    # Remove NOT NULL constraint from body column
    # Article uses has_rich_text :body, which stores content in action_text_rich_texts,
    # not in the articles.body column, so the column can be nullable
    change_column_null :articles, :body, true
  end

  def down
    # Restore NOT NULL constraint if rolling back
    execute "UPDATE articles SET body = '' WHERE body IS NULL"
    change_column_null :articles, :body, false
  end
end

