class User < ApplicationRecord
  has_many :bookings
  has_many :User_anguages
end
