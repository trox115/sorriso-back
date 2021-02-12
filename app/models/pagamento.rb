class Pagamento < ApplicationRecord
  belongs_to :cliente
  belongs_to :consulta
end
