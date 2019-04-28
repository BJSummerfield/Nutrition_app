class Consumption < ApplicationRecord
  belongs_to :user
  validates :meal, presence: true

  def total(string)
    b = []
    a = User.first.consumptions.where(user_id: User.first)
    a.each do |meal|
      b << meal[string]
    end
    return b.inject(0,:+)
  end

end


