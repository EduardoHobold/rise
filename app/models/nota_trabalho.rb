class NotaTrabalho < ApplicationRecord
  belongs_to :aluno
  belongs_to :trabalho
end
