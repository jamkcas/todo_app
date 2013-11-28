class ItemUser < ActiveRecord::Base
  attr_accessible :item_id, :user_id

  belongs_to :item
  belongs_to :user

  validates :item_id, presence: true
  validates :user_id, presence: true
end
