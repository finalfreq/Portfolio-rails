class Category < ActiveRecord::Base
  has_many :projects
  belongs_to :admin

  validates :name, presence: true
  validates :description, presence: true



end
