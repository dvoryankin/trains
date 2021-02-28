class AddTrainRefToCarriages < ActiveRecord::Migration[6.0]
  def change
    add_belongs_to :carriages, :train, foreign_key: true
  end
end
