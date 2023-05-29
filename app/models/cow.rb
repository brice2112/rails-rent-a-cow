class Cow < ApplicationRecord
  belongs_to :user
  has_many :bookings

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
    Froment du Léon
    Jersiaise
    Pie rouge des plaines
    Prim'Holstein
    Rouge flamande
    Blanc bleu
    Blonde d'Aquitaine
    Charolaise
    Gasconne des Pyrénées
    Limousine
    Parthenaise
    Rouge des prés
    Saosnoise
    Taureau de Camargue
    Armoricaine
    Aubrac
    Aure-et-saint-girons
    Béarnaise
    Bleue du Nord
    Ferrandaise
    Montbéliarde
    Nantaise
    Normande
    Salers
    Tarine
  ), message: "wrong race"}



end
