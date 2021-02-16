class OrcamentoDetailSerializer < ActiveModel::Serializer
  attributes :id
  has_one :orcamento
  has_one :servico
  has_one :dente
end
