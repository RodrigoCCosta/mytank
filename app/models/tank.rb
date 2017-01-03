class Tank < ApplicationRecord
  belongs_to :car
  validates :car, :distance, :fillvol, :price, :fuel, :way, :startdate, :finaldate, presence: true

  def way
    ['Rodoviário', 'Urbano', 'Misto']
  end

  def fuel
    ['Gasolina', 'Etanol', 'Gasolina e Etanol', 'Diesel']
  end

end
