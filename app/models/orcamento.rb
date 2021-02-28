class Orcamento < ApplicationRecord
  belongs_to :cliente
  belongs_to :servico
  has_many :orcamento_details, dependent: :destroy
end
