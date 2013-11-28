class Item < ActiveRecord::Base
  attr_accessible :color, :completed, :content, :title

  validates :color, presence: true
  validates :content, presence: true
  validates :title, presence: true
end
