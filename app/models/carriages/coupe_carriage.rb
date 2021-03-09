class CoupeCarriage < Carriage
  validates :upper_seats, numericality: { only_integer: true }
  validates :lower_seats, numericality: { only_integer: true }
end