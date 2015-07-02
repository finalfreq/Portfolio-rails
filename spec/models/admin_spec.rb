require 'rails_helper'

describe Admin do
  it { should validate_presence_of :name}
  it { should have_many :projects}
  it { should have_many :categories}

end
