class RemoveColumnTestQuestion < ActiveRecord::Migration[6.0]
  def change
    remove_column :test_questions, :olympic_id
  end
end
