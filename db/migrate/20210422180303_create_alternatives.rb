class CreateAlternatives < ActiveRecord::Migration[6.0]
  def change
    create_table :alternatives do |t|
      t.references :question, foreign_key: true
      t.text :description
      t.boolean :is_true

      t.timestamps
    end
  end
end
