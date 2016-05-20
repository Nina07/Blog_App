class CreateTableDemo < ActiveRecord::Migration
  def change
    create_table :table_demos do |t|
      t.string :topic
      t.time :duration
      t.string :category
    end
  end
end
