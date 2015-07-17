require 'rails_helper'

describe Reference do
  it {should validate_presence_of :name}
  it {should validate_presence_of :email}
  it {should belong_to :user}

end
