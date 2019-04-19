class Aluno < ApplicationRecord
  belongs_to :pessoa
  belongs_to :matricula
end
