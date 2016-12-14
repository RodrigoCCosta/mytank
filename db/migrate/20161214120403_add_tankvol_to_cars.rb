class AddTankvolToCars < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :tankvol, :float
  end
end
