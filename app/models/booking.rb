class Booking < ApplicationRecord
  belongs_to :cow
  belongs_to :user

  validates :validated, inclusion: { in: %w(Pending Accepted Rejected),
    message: "%{value} is not valid" }
end
