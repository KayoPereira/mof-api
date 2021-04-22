class AddHierarchyToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :hierarchy, foreign_key: true
  end
end
