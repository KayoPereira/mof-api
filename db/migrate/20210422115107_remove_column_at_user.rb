class RemoveColumnAtUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :hierarchies_id
  end
end
