class AddIntegerPositionToBooks < ActiveRecord::Migration[8.1]
  def change
    add_column :books, :position, :integer
    add_index :books, :position
  end
end
