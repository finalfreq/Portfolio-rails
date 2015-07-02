class Admin < ActiveRecord::Base
  has_many :projects
  has_many :categories
  validates :name, presence: true

end
