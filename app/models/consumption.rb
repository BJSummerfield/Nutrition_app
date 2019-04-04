class Consumption < ApplicationRecord
  has_many :nutrients, :through => :consumption_nutrients
  belongs_to :user
end
