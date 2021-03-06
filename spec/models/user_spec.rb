require 'rails_helper'

describe User do
  it { should validate_presence_of :name}
  it { should validate_presence_of :email}
  it { should validate_presence_of :password}
  it { should have_many :projects}
  it { should have_many :categories}
  it { should have_many :comments}
  it { should have_many :references}

end
