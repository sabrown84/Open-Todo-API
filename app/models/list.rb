class List < ActiveRecord::Base
  belongs_to :user
  has_many :items, dependent: :destroy

  validates :user_id, presence: true
  validates :title, presence: true
  validates :permissions, inclusion: %w(viewable private open), allow_nil: false
end
