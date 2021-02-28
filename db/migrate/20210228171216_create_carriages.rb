class CreateCarriages < ActiveRecord::Migration[6.0]
  def change
    create_table :carriages do |t|
      t.integer :kind
      t.integer :upper_seats
      t.integer :lower_seats

      t.timestamps
    end
  end
end
