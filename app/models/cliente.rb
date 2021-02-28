class Cliente < ApplicationRecord
  has_many :orcamento, dependent: :destroy
  has_many :dmarcacao, dependent: :destroy
  has_many :consultas, dependent: :destroy
  has_many :tratamento, dependent: :destroy

end
