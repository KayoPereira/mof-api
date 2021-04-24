class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions do |t|
      t.references :user, foreign_key: true
      t.references :olympic, foreign_key: true
      t.references :brazil_state, foreign_key: true
      t.string :county
      t.text :school

      t.timestamps
    end
  end
end
