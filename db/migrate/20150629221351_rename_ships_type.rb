class RenameShipsType < ActiveRecord::Migration
  def change
    rename_column :ships, :type, :ship_type
  end
end
