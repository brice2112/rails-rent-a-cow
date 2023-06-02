class Cow < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?


  validates :name, presence: true
  validates :age, numericality: { only_integer: true, greater_than: 0 }
  validates :gender, presence: true, inclusion: { in: %w(Male Female),
    message: "must be male or female, no LGBTQI+ allowed" }
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }

  validates :race, inclusion: { in: %w(
    Abondance
    Bordelaise
    Brune
    Pie\rouge\des\plaines
    Prim'Holstein
    Rouge\flamande
    Blanc\bleu
    Blonde\d'Aquitaine
    Charolaise
    Limousine
    Parthenaise
    Rouge\des\prés
    Saosnoise
    Armoricaine
    Aubrac
    Aure-et-saint-girons
    Béarnaise
    Bleue\du\Nord
    Ferrandaise
    Montbéliarde
    Nantaise
    Normande
    Salers
    Tarine
  ), message: "wrong race"}

end
