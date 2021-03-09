class RenameColumnKindToCarriages < ActiveRecord::Migration[6.0]
  def up
    rename_column :carriages, :kind, :type
    change_column :carriages, :type, :string
  end

  def down
    change_column :carriages, :type, :integer
    rename_column :carriages, :type, :kind
  end
end
