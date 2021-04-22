class CreateOlympicTests < ActiveRecord::Migration[6.0]
  def change
    create_table :olympic_tests do |t|
      t.references :olympic, foreign_key: true
      t.references :test, foreign_key: true

      t.timestamps
    end
  end
end
