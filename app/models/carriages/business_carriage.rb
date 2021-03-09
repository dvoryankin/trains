class BusinessCarriage < Carriage
  validates :lower_seats, numericality: { only_integer: true }
end