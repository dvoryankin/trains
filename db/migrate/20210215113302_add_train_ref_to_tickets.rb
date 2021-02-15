class AddTrainRefToTickets < ActiveRecord::Migration[6.0]
  def change
    add_reference :tickets, :train, foreign_key: true
  end
end
