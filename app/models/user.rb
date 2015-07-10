class User < ActiveRecord::Base
  has_many :projects
  has_many :categories
  validates :name, presence: true
  validates :email, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
