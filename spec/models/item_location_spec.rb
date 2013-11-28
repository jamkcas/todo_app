require 'spec_helper'

describe ItemLocation do
  it {should belong_to(:item)}
  it {should belong_to(:location)}

  it {should validate_presence_of(:item_id)}
  it {should validate_presence_of(:location_id)}
end
