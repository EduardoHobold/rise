class Disciplina < ApplicationRecord
  belongs_to :semestre
  belongs_to :curso

  validates :nome, :carga_horaria, :conteudo, presence: true
  validates :nome, :carga_horaria, :conteudo, uniqueness: true
  
end
