class AddSortingCarriagesToTrain < ActiveRecord::Migration[6.0]
  def change
    add_column :trains, :sorting_cars_head, :boolean, default: true
  end
end
