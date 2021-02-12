class Documento < ApplicationRecord
  belongs_to :cliente
  belongs_to :doc_categoria
end
