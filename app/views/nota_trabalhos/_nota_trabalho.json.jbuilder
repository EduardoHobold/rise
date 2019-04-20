json.extract! nota_trabalho, :id, :aluno_id, :trabalho_id, :nota, :created_at, :updated_at
json.url nota_trabalho_url(nota_trabalho, format: :json)
