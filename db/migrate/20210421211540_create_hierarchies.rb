class CreateHierarchies < ActiveRecord::Migration[6.0]
  def change
    create_table :hierarchies do |t|
      t.string :name
      
      t.timestamps
    end
  end
end
