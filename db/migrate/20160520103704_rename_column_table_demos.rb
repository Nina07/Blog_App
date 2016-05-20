class RenameColumnTableDemos < ActiveRecord::Migration
  def change
    change_table :table_demos do |t|
      t.rename :duration, :presentation_duration
    end
  end
end
