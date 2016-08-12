class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string	:name, 			:default => "",		:null => false
      t.integer :host_id, 		:null => false
      t.text 	:description,	:default => "", 	:null => false

      t.timestamps null: false
    end
  end
end
