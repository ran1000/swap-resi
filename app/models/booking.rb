class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :space

  enum status: {
    pending: 0,
    accepted: 1,
    declined: 2
  }, _prefix: true

  validates :message, presence: true, length: { minimum: 6 }
  validates :start_date, presence: true
  validates :end_date, presence: true
end
