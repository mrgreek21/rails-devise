class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.integer :guest_id
      t.boolean :attending

      t.timestamps null: false
    end
  end
end
