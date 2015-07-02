class Project < ActiveRecord::Base
  belongs_to :category
  belongs_to :admin

  validates :name, presence: true
  validates :link, presence: true
  validates :description, presence: true
end
