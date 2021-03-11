class AddNumberToCarriages < ActiveRecord::Migration[6.0]
  def change
    add_column :carriages, :number, :integer
  end
end
