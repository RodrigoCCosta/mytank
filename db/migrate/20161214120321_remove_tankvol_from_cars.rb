class RemoveTankvolFromCars < ActiveRecord::Migration[5.0]
  def change
    remove_column :cars, :tankvol, :integer
  end
end
