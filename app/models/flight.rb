class Flight < ApplicationRecord
  has_many :bookings, through: :users

end
