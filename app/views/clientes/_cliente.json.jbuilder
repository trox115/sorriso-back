json.extract! cliente, :id, :nome, :bi, :nif, :utente, :telefone, :email, :seguro, :numSeguro, :morada, :observacoes, :dataNascimento, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
