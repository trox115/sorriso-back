class Consulta < ApplicationRecord
  belongs_to :cliente
  belongs_to :servico
end
