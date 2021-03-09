class EconomyCarriage < Carriage
  validates :upper_seats, numericality: { only_integer: true }
  validates :lower_seats, numericality: { only_integer: true }
  validates :side_upper_seats, numericality: { only_integer: true }
  validates :side_lower_seats, numericality: { only_integer: true }
end