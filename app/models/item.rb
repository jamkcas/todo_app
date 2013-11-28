class Item < ActiveRecord::Base
  attr_accessible :color, :completed, :content, :title
end
