class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :train

  validates :number, presence: true
end
