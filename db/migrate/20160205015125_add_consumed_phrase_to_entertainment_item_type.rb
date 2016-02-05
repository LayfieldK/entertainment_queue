class AddConsumedPhraseToEntertainmentItemType < ActiveRecord::Migration
  def change
    add_column :entertainment_item_types, :consumed_phrase, :string
  end
end
