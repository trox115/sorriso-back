class OrcamentoDetail < ApplicationRecord
  belongs_to :orcamento
  belongs_to :servico
  belongs_to :dente
end
