json.extract! prova_livro, :id, :livro_id, :aluno_id, :nota, :created_at, :updated_at
json.url prova_livro_url(prova_livro, format: :json)
