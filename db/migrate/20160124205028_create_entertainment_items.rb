class CreateEntertainmentItems < ActiveRecord::Migration
  def change
    create_table :entertainment_items do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
