class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :cows

  validates :first_name, presence: true
  validates :last_name, presence: true
  # validates :phone_number, format: { with: /0\d{9}/, message: "wrong phone number format" }
end
