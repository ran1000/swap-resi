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

  validates :message, presence: true, length: { minimum: 6 }
  validates :start_date, presence: true
  validates :end_date, presence: true
end
