class Orcamento < ApplicationRecord
  belongs_to :cliente
  belongs_to :servico
end
