class AddYearmodelToCars < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :yearmodel, :string
  end
end
