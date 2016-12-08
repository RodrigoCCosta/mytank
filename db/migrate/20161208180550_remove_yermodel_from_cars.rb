class RemoveYermodelFromCars < ActiveRecord::Migration[5.0]
  def change
    remove_column :cars, :yermodel, :string
  end
end
