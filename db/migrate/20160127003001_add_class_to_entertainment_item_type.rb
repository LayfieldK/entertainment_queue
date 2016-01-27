class AddClassToEntertainmentItemType < ActiveRecord::Migration
  def change
    add_column :entertainment_item_types, :css_class, :string
  end
end
