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

  validates :number, uniqueness: { scope: :train_id,
                                   message: 'Number is already in use for this train' }

  before_validation :set_number

  scope :coupe,    -> { where(type: 'CoupeCarriage') }
  scope :economy,  -> { where(type: 'EconomyCarriage') }
  scope :sitting,  -> { where(type: 'SittingCarriage') }
  scope :business, -> { where(type: 'BusinessCarriage') }
  scope :sum_upper_seats, -> { sum(:upper_seats) }
  scope :sum_lower_seats, -> { sum(:lower_seats) }
  scope :ordered, ->(asc=true) { order(number: asc? :asc : :desc) }

  private

  def set_number
    if train
      max_number = Carriage.where(train: train).maximum(:number)
      self.number ||= max_number.nil? ? 1 : max_number + 1
    end
  end
end