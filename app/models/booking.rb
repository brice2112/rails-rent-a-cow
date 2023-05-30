class Booking < ApplicationRecord
  belongs_to :cow
  belongs_to :user

  validates :validated, inclusion: { in: %w(pending accepted rejected),
    message: "%{value} is not valid" }
end
