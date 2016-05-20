class AddColumnTableDemos < ActiveRecord::Migration
  def change
    add_column :table_demos, :rating, :string
  end
end
