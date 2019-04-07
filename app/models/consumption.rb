class Consumption < ApplicationRecord
  belongs_to :user
  validates :meal, presence: true
end
