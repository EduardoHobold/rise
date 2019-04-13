class AlunoLivro < ApplicationRecord
  belongs_to :aluno
  belongs_to :livro
end
