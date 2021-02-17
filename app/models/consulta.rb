class Consulta < ApplicationRecord
  belongs_to :cliente
  has_one_attached :image
end