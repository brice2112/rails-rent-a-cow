class Booking < ApplicationRecord
  belongs_to :cow
  belongs_to :user
end
