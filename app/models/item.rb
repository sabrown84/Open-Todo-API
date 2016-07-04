class Item < ActiveRecord::Base
  belongs_to :list

  validates :description
end
