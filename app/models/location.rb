class Location < ActiveRecord::Base
  attr_accessible :title

  has_many :item_locations
  has_many :items, through: :item_locations

  validates :title, presence: true
end
