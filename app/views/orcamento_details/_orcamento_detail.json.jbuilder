json.extract! orcamento_detail, :id, :orcamento_id, :servico_id, :dente_id, :created_at, :updated_at
json.url orcamento_detail_url(orcamento_detail, format: :json)
