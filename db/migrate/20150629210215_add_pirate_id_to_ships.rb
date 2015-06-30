class AddPirateIdToShips < ActiveRecord::Migration
  def change
    add_column :ships, :pirate_id, :integer
  end
end
