class CreateJoinTableDemoExtensionTableDemo < ActiveRecord::Migration
  def change
    create_join_table :demo_extensions, :table_demos do |t|
      t.index :demo_extension_id
      t.index :table_demo_id
    end
  end
end
