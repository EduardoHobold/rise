class Prova < ApplicationRecord
  belongs_to :aluno
  belongs_to :disciplina

  validates :notag1, :notag2, presence: true
  
end
