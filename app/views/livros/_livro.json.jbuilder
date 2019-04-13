json.extract! livro, :id, :nome, :autor, :paginas, :editora, :sinopse, :created_at, :updated_at
json.url livro_url(livro, format: :json)
