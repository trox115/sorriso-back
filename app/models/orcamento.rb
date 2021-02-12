class Orcamento < ApplicationRecord
  belongs_to :cliente
  belongs_to :doc_categoria
  belongs_to :servico
end
