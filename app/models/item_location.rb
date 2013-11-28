class ItemLocation < ActiveRecord::Base
  attr_accessible :item_id, :location_id

  belongs_to :item
  belongs_to :location

  validates :item_id, presence: true
  validates :location_id, presence: true
end
