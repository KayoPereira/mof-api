class RemoveTableTestQuestion < ActiveRecord::Migration[6.0]
  def change
    drop_table :test_questions
  end
end
