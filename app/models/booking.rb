class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flight
  validates :destination, :date, :time, presence: true
end
