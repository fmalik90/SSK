class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flight
  validates :destination, presence: true
end
