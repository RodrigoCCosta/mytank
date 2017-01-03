class Car < ApplicationRecord
  has_many :tanks
  validates :name, :brand, :version, :yearmodel, :tankvol, presence: true

#  def car_name
#    "#{name}"
#  end


end
