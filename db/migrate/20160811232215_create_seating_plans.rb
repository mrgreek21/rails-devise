class CreateSeatingPlans < ActiveRecord::Migration
  def change
    create_table :seating_plans do |t|
      t.integer :event_id
      t.integer :head_table_id

      t.timestamps null: false
    end
  end
end
