class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.integer :seating_plan_id
      t.integer :table_num, 		:default => 0, 	:null => false

      t.timestamps null: false
    end
  end
end
