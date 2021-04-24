class CreateExams < ActiveRecord::Migration[6.0]
  def change
    create_table :exams do |t|
      t.references :olympic, foreign_key: true
      t.references :test, foreign_key: true

      t.timestamps
    end
  end
end
