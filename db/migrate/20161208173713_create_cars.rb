class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :name
      t.string :version
      t.string :yermodel
      t.integer :tankvol

      t.timestamps
    end
  end
end
