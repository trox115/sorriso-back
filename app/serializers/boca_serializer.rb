class BocaSerializer < ActiveModel::Serializer
  attributes :id
  has_one :cliente
  has_one :servico
end
