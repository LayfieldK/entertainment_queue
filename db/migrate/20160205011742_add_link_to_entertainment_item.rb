class AddLinkToEntertainmentItem < ActiveRecord::Migration
  def change
    add_column :entertainment_items, :link, :string
  end
end
