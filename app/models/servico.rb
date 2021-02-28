class Servico < ApplicationRecord
  belongs_to :categoria
  has_many :bocas, dependent: :destroy
  has_many :consulta_details, dependent: :destroy

end
