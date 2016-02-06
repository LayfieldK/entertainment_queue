class EntertainmentItem < ActiveRecord::Base
  include RankedModel
  belongs_to :entertainment_item_type
  belongs_to :user
  
  validates :user_id, presence: true
  validates :link, presence: true
  validates :name, presence: true
  validates :entertainment_item_type_id, presence: true

  ranks :row_order
end
