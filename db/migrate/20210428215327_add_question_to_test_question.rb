class AddQuestionToTestQuestion < ActiveRecord::Migration[6.0]
  def change
    add_reference :test_questions, :question, foreign_key: true
  end
end
