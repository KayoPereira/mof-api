class CreateBrazilStates < ActiveRecord::Migration[6.0]
  def change
    create_table :brazil_states do |t|
      t.string :name

      t.timestamps
    end
  end
end
