class EntertainmentItem < ActiveRecord::Base
  include RankedModel
  belongs_to :entertainment_item_type
  belongs_to :user

  ranks :row_order
end
