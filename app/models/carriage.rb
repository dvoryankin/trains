class Carriage < ApplicationRecord
  KINDS = {
    economy: 0,
    coupe: 1
  }.freeze

  belongs_to :train

  validates :kind, inclusion: { in: KINDS.values,
                                message: "is not included in the list: #{KINDS.keys.join(', ')}" }
  validates :upper_seats, numericality: { only_integer: true }
  validates :lower_seats, numericality: { only_integer: true }

  scope :coupe,   -> { where(kind: KINDS[:coupe]) }
  scope :economy, -> { where(kind: KINDS[:economy]) }
  scope :sum_upper_seats, -> { sum(:upper_seats) }
  scope :sum_lower_seats, -> { sum(:lower_seats) }
end