class Carriage < ApplicationRecord
  TYPES = {
    economy: 'EconomyCarriage',
    coupe: 'CoupeCarriage',
    sitting: 'SittingCarriage',
    business: 'BusinessCarriage'
  }.freeze

  belongs_to :train


  validates :type, inclusion: { in: TYPES.values,
    message: "is not included in the list: #{TYPES.keys.join(', ')}" }

  scope :coupe,    -> { where(type: 'CoupeCarriage') }
  scope :economy,  -> { where(type: 'EconomyCarriage') }
  scope :sitting,  -> { where(type: 'SittingCarriage') }
  scope :business, -> { where(type: 'BusinessCarriage') }
  scope :sum_upper_seats, -> { sum(:upper_seats) }
  scope :sum_lower_seats, -> { sum(:lower_seats) }
end