class RemoveTableOlympicTest < ActiveRecord::Migration[6.0]
  def change
    drop_table :olympic_tests
  end
end
