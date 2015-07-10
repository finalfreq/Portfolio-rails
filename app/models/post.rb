class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  validates :name, presence: true
  validates :body, presence: true


end
