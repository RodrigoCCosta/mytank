class AddObsToTanks < ActiveRecord::Migration[5.0]
  def change
    add_column :tanks, :obs, :text
  end
end
