require 'spec_helper'

describe Item do
  it {should have_many(:item_locations)}
  it {should have_many(:locations).through(:item_locations)}
  it {should have_many(:item_users)}
  it {should have_many(:users).through(:item_users)}

  it {should validate_presence_of(:color)}
  it {should validate_presence_of(:content)}
  it {should validate_presence_of(:title)}
end
