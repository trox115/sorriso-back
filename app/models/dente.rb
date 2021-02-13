class Dente < ApplicationRecord
  validates :coords, :presence => true, :uniqueness => true
end
