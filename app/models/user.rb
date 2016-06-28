class User < ActiveRecord::Base
#  before_create :generate_auth_token

  has_many :lists
  has_many :items, through: :lists

  def generate_auth_token
    loop do
      self.auth_token = SecureRandom.base64(64)
      break unless User.find_by(auth_token: auth_token)
    end
  end
end
