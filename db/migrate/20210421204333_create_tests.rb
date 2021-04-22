class CreateTests < ActiveRecord::Migration[6.0]
  def change
    create_table :tests do |t|
      t.text :description
      t.date :start_test
      t.date :end_test

      t.timestamps
    end
  end
end
