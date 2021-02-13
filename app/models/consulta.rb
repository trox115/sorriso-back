class Consulta < ApplicationRecord
  belongs_to :cliente
  belongs_to :servico
  has_one_attached :image
end

