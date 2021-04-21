class CreateOlympics < ActiveRecord::Migration[6.0]
  def change
    create_table :olympics do |t|
      t.string :title
      t.string :description
      t.integer :edition
      t.date :start_registration
      t.date :end_registration
      t.string :image

      t.timestamps
    end
  end
end
