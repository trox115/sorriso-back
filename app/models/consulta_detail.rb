class ConsultaDetail < ApplicationRecord
  belongs_to :tratamento
  belongs_to :consulta
  belongs_to :servico
end
