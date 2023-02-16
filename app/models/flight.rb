class Flight < ApplicationRecord
  has_many :bookings, through: :users
  has_one_attached :photo
end
