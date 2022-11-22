class Space < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, uniqueness: true, length: { minimum: 6 }
  validates :daily_cost, presence: true, numericality: true, inclusion: { in: 3..20 , wrong_length: "Value should be between 3 and 20" }
end
