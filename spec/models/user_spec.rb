require 'spec_helper'

describe User do
  it {should have_many(:item_users)}
  it {should have_many(:items).through(:item_users)}
end
