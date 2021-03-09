class SittingCarriage < Carriage
  validates :sitting_seats, numericality: { only_integer: true }
end