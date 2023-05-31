class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :space

  enum status: {
    pending: 0,
    accepted: 1,
    declined: 2
  }, _prefix: true

  def pending?
    status == "pending"
  end

  def accepted?
    status == "accepted"
  end

  def declined?
    status == "declined"
  end

  def cost?
    booking_days = (end_date - start_date).to_i
    credit_cost = (space.daily_cost * booking_days)
    return credit_cost
  end

  validates :message, presence: true, length: { minimum: 6 }
  validates :start_date, presence: true
  validates :end_date, presence: true
end
