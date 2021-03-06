require 'spec_helper'

describe ItemUser do
  it {should belong_to(:item)}
  it {should belong_to(:user)}

  it {should validate_presence_of(:item_id)}
  it {should validate_presence_of(:user_id)}
end
