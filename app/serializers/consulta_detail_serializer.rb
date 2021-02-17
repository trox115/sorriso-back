class ConsultaDetailSerializer < ActiveModel::Serializer
  attributes :id
  has_one :tratamento
  has_one :consulta
end
