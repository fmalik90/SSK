class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flight

  validates :name, presence: true
  validates :seat, presence: true
end
