class User < ActiveRecord::Base
  has_many :lists
  has_many :items, through: :lists

  validates :email, presence: true
  validates_presence_of :password, :on => :create

end
