class AddTextExcerptNullFalseToArticles < ActiveRecord::Migration[8.1]
  def up
    # Add excerpt column with null: false
    add_column :articles, :excerpt, :text, null: false, default: ''
    
    # Note: We're not enforcing NOT NULL on body because Article uses has_rich_text :body,
    # which stores content in action_text_rich_texts, not in the articles.body column
  end

  def down
    remove_column :articles, :excerpt
  end
end
