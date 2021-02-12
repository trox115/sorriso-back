json.extract! servico, :id, :nome, :categoria_id, :custo, :created_at, :updated_at
json.url servico_url(servico, format: :json)
