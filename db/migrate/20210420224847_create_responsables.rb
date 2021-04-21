class CreateResponsables < ActiveRecord::Migration[6.0]
  def change
    create_table :responsables do |t|
      t.references :user, foreign_key: true
      t.references :olympic, foreign_key: true

      t.timestamps
    end
  end
end
