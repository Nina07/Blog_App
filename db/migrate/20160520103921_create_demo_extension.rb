class CreateDemoExtension < ActiveRecord::Migration
  def change
    create_table :demo_extensions do |t|
      t.boolean :positive_responses
    end
  end
end
