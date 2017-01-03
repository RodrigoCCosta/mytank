class CreateTanks < ActiveRecord::Migration[5.0]
  def change
    create_table :tanks do |t|
      t.references :car, foreign_key: true
      t.float :distance
      t.float :fillvol
      t.float :price
      t.string :fuel
      t.string :way
      t.date :startdate
      t.date :finaldate

      t.timestamps
    end
  end
end
