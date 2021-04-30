class AddColumnToTestQuestion < ActiveRecord::Migration[6.0]
  def change
    add_reference :test_questions, :test, foreign_key: true
    add_reference :test_questions, :olympic, foreign_key: true
  end
end
