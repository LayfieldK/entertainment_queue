class EntertainmentItem < ActiveRecord::Base
  include RankedModel
  has_one :entertainment_item_type
  belongs_to :user

  ranks :row_order
end
