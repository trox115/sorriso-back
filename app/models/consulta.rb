class Consulta < ApplicationRecord
  belongs_to :cliente
  has_one_attached :image
  has_many :consulta_details, dependent: :destroy
  has_many :pagamentos, dependent: :destroy
  has_many :bocas, dependent: :destroy
end