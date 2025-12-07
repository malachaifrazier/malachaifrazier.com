class AddTechStachAndFeaturedToProjects < ActiveRecord::Migration[8.1]
  def change
    # add "t.string :tech_stack, array: true, default: []" and "t.boolean :featured, default: false"
    add_column :projects, :tech_stack, :string, array: true, default: []
    add_column :projects, :featured, :boolean, default: false

    add_index :projects, :tech_stack, using: 'gin'
    add_index :projects, :featured
  end
end
