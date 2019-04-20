class NotaTrabalho < ApplicationRecord
  belongs_to :aluno
  belongs_to :trabalho

  validates :nota, presence: true
  
end
