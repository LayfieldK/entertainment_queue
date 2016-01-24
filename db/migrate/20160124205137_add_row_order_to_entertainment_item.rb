class AddRowOrderToEntertainmentItem < ActiveRecord::Migration
  def change
    add_column :entertainment_items, :row_order, :integer
    add_reference :entertainment_items, :user, index: true
    
  end
end
