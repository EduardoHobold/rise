class PresencaAula < ApplicationRecord
  belongs_to :aula
  belongs_to :aluno
end
