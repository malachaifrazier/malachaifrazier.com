class AddAuthorToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :author, :string
  end
end
