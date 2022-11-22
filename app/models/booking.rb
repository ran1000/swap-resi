class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :space

  enum status: {
    pending: 0,
    accepted: 1,
    declined: 2
  }, _prefix: true

end
