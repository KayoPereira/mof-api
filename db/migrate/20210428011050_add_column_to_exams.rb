class AddColumnToExams < ActiveRecord::Migration[6.0]
  def change
    add_reference :exams, :test, foreign_key: true
    add_reference :exams, :question, foreign_key: true
  end
end
