json.extract! pagamento, :id, :cliente_id, :consulta_id, :metodo, :valor, :troco, :created_at, :updated_at
json.url pagamento_url(pagamento, format: :json)
