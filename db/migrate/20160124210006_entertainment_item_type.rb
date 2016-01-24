class EntertainmentItemType < ActiveRecord::Migration
  def change
    create_table :entertainment_item_types do |t|
        t.string :name
  
        t.timestamps null: false
      end
    add_reference :entertainment_items, :entertainment_item_types, index: true
  end
end
