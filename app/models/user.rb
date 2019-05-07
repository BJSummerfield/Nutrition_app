class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true, format: {with: /@/}
  has_many :consumptions
  has_one :diet
  
end
