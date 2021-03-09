class AddColumnSeatsToCarriages < ActiveRecord::Migration[6.0]
  def change
    add_column :carriages, :side_upper_seats, :integer
    add_column :carriages, :side_lower_seats, :integer
    add_column :carriages, :sitting_seats, :integer
  end
end
