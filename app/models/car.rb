class Car < ApplicationRecord

  validates :name, :brand, :version, :yearmodel, :tankvol, presence: true

end
