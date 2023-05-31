class Cow < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  has_one_attached :photo

  validates :name, presence: true
  validates :age, numericality: { only_integer: true, greater_than: 0 }
  validates :gender, presence: true, inclusion: { in: %w(Male Female),
    message: "must be male or female, no LGBTQI+ allowed" }

  validates :location, format: { with: /[-+]?([1-8]?\d(\.\d+)?|90(\.0+)?),\s*[-+]?(180(\.0+)?|((1[0-7]\d)|([1-9]?\d))(\.\d+)?)/,
    message: "wrong location format" }

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
