json.extract! pessoa, :id, :nome, :pai, :mae, :cpf, :rg, :data_nascimento, :endereco_id, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)
