class Item < ActiveRecord::Base
  attr_accessible :color, :completed, :content, :title

  has_many :item_locations
  has_many :locations, through: :item_locations
  has_many :item_users
  has_many :users, through: :item_users

  validates :color, presence: true
  validates :content, presence: true
  validates :title, presence: true
end
