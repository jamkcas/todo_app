require 'spec_helper'

describe Location do
  it {should have_many(:item_locations)}
  it {should have_many(:items).through(:item_locations)}

  it {should validate_presence_of(:title)}
end
